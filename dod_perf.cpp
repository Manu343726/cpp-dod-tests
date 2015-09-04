/* Performance measurement of C++ encapsulation for Data-Oriented Design.
 *
 * Copyright 2015 Joaquin M Lopez Munoz.
 * Distributed under the Boost Software License, Version 1.0.
 * (See accompanying file LICENSE_1_0.txt or copy at
 * http://www.boost.org/LICENSE_1_0.txt)
 */

#include <algorithm>
#include <array>
#include <chrono>
#include <numeric> 
   
std::chrono::high_resolution_clock::time_point measure_start,measure_pause;
       
template<typename F>
double measure(F f)
{
  using namespace std::chrono;
       
  static const int              num_trials=10;
  static const milliseconds     min_time_per_trial(200);
  std::array<double,num_trials> trials;
  static decltype(f())          res; /* to avoid optimizing f() away */
       
  for(int i=0;i<num_trials;++i){
    int                               runs=0;
    high_resolution_clock::time_point t2;
       
    measure_start=high_resolution_clock::now();
    do{
      res=f();
      ++runs;
      t2=high_resolution_clock::now();
    }while(t2-measure_start<min_time_per_trial);
    trials[i]=duration_cast<duration<double>>(t2-measure_start).count()/runs;
  }
  (void)res; /* var not used warn */
       
  std::sort(trials.begin(),trials.end());
  return std::accumulate(
    trials.begin()+2,trials.end()-2,0.0)/(trials.size()-4);
}
       
void pause_timing()
{
  measure_pause=std::chrono::high_resolution_clock::now();
}
       
void resume_timing()
{
  measure_start+=std::chrono::high_resolution_clock::now()-measure_pause;
}

#include <cstddef>
#include <tuple>
#include <utility>
#include <boost/iterator/iterator_facade.hpp>

namespace dod{
    
template<typename T,int Tag=0>
struct member
{
  using type=T;
  static const int tag=Tag;
};

template<typename... Members>class access;

template<typename Member>
class access<Member>
{
  using type=typename Member::type;
  type* p;

public:
  access(type* p):p(p){}
  
  type&       get(Member){return *p;}
  const type& get(Member)const{return *p;}
  
  bool equal(const access& x)const{return p==x.p;}
  void increment(){++p;}
  void decrement(){++p;}
  void advance(std::size_t n){p+=n;}
  std::ptrdiff_t distance_to(const access& a)const{return a-p-p;}
};

template<typename Member0,typename... Members>
class access<Member0,Members...>:
  public access<Member0>,access<Members...>
{
  using first=access<Member0>;
  using rest=access<Members...>;
public:
  template<typename Arg0,typename... Args>
  access(Arg0&& arg0,Args&&... args):
    first(std::forward<Arg0>(arg0)),
    rest(std::forward<Args>(args)...)
  {}
  
  using first::get;
  using rest::get;

  bool equal(const access& x)const{return first::equal(x);}
  void increment(){first::increment();rest::increment();}
  void decrement(){first::decrement();rest::decrement();}
  void advance(std::size_t n){first::advance(n);rest::advance(n);}
  std::ptrdiff_t distance_to(const access& x)const{return first::distance_to(x);}
};

template<typename T> class pointer;

template<template <typename> class Class,typename Access>
class pointer<Class<Access>>:
  public boost::iterator_facade<
    pointer<Class<Access>>,
    Class<Access>,
    boost::random_access_traversal_tag,
    Class<Access>
  >
{
public:
  pointer(const Access& a):a(a){}
  
  Class<Access> operator[](std::size_t n)const{return *(*this+n);}
  
private:
  friend class boost::iterator_core_access;
  
  Class<Access> dereference()const{return Class<Access>(a);}
  bool equal(const pointer& x)const{return a.equal(x.a);}
  void increment(){a.increment();}
  void decrement(){a.decrement();}
  void advance(std::size_t n){a.advance(n);}
  std::ptrdiff_t distance_to(const pointer& x)const{return a.distance_to(x.a);}

  Access a;
};

template<template <typename> class Class,typename Access>
pointer<Class<Access>> make_pointer(const Access& a)
{
  return pointer<Class<Access>>(a);
}

} // namespace dod

#include <iostream>
#include <vector>

using namespace dod;

static int render_output=0;

void do_render(int x,int y,char c)
{
  render_output+=x+y+c;
}

class plain_particle
{  
  char  color;
  int   x;
  int   y;
  int   dx;
  int   dy;
public:

  static const int max_x=200;
  static const int max_y=100;
    
  plain_particle(char color_,int x_,int y_,int dx_,int dy_):
    color(color_),x(x_),y(y_),dx(dx_),dy(dy_)
  {}

  void render()const
  {
    do_render(x,y,color);
  }

  void move()
  {
    x+=dx;
    if(x<0){
      x*=-1;
      dx*=-1;
    }
    else if(x>max_x){
      x=2*max_x-x;
      dx*=-1;      
    }
    
    y+=dy;
    if(y<0){
      y*=-1;
      dx*=-1;
    }
    else if(y>max_y){
      y=2*max_y-y;
      dy*=-1;      
    }
  }
};

template<typename Access>
class particle:Access
{
  using Access::get;
  
  using color=member<char,0>;
  using x=member<int,0>;
  using y=member<int,1>;
  using dx=member<int,2>;
  using dy=member<int,3>;

public:

  static const int max_x=200;
  static const int max_y=100;

  particle(const Access& a):Access(a){}

  void render()const
  {
    do_render(get(x()),get(y()),get(color()));
  }

  void move()
  {
    get(x())+=get(dx());
    if(get(x())<0){
      get(x())*=-1;
      get(dx())*=-1;
    }
    else if(get(x())>max_x){
      get(x())=2*max_x-get(x());
      get(dx())*=-1;      
    }
    
    get(y())+=get(dy());
    if(get(y())<0){
      get(y())*=-1;
      get(dy())*=-1;
    }
    else if(get(y())>max_y){
      get(y())=2*max_y-get(y());
      get(dy())*=-1;      
    }
  }
};

template<typename Access>
particle<Access> make_particle(Access&& a)
{
  return particle<Access>(std::forward<Access>(a));
}

int render(char* fc,char* lc,int* fx,int* fy)
{
  render_output=0;
  while(fc!=lc)do_render(*fx++,*fy++,*fc++);
  return render_output;
}

int render(char* itc,int* itx,int* ity,std::size_t n)
{
  render_output=0;
  for(std::size_t i=0;i<n;++i)do_render(itx[i],ity[i],itc[i]);
  return render_output;
}

template<typename Iterator>
int render(Iterator first,Iterator last)
{
  render_output=0;
  while(first!=last)(first++)->render();
  return render_output;
}

template<typename Iterator,typename Size>
int render(Iterator it,Size n)
{
  render_output=0;
  for(Size i=0;i<n;++i)it[i].render();
  return render_output;
}

template<typename F>
double measure(F f,std::size_t n){return (measure(f)/n)*10E6;}

int main()
{
  using color=member<char,0>;
  using x=member<int,0>;
  using y=member<int,1>;
  using dx=member<int,2>;
  using dy=member<int,3>;

  std::size_t n0=10000,n1=10000000,fn=10;
   
  std::cout<<"render:"<<std::endl;
  std::cout<<"n;oop;raw;dod;render_dod;oop[i];raw[i];dod[i];render_dod[i]"<<std::endl;
   
  for(std::size_t n=n0;n<=n1;n*=fn){
    std::vector<char>           color_;
    std::vector<int>            x_,y_,dx_,dy_;
    std::vector<plain_particle> pp_;

    for(std::size_t i=0;i<n;++i){
      char carg=i%5;
      int  xarg=i,yarg=2*i,dxarg=i%20,dyarg=i%10;
      pp_.push_back(plain_particle(carg,xarg,yarg,dxarg,dyarg));
      color_.push_back(carg);
      x_.push_back(xarg);
      y_.push_back(yarg);
      dx_.push_back(dxarg);
      dy_.push_back(dyarg);
    }
    
    using access=dod::access<color,x,y,dx,dy>;
    using render_access=dod::access<color,x,y>;
    
    auto beg_oop=pp_.begin(),
         end_oop=pp_.end();
    auto beg_color=&color_[0],
         end_color=&color_[n-1]; // <--- n en el original 
    auto beg_x=&x_[0];
    auto beg_y=&y_[0];
    auto beg_dod=make_pointer<particle>(access(&color_[0],&x_[0],&y_[0],&dx_[0],&dy_[0])),
         end_dod=beg_dod+n;
    auto beg_rdod=make_pointer<particle>(render_access(&color_[0],&x_[0],&y_[0])),
         end_rdod=beg_rdod+n;
    
    std::cout<<n<<";";
    std::cout<<measure([=](){return render(beg_oop,end_oop);},n)<<";";
    std::cout<<measure([=](){return render(beg_color,end_color,beg_x,beg_y);},n)<<";";
    std::cout<<measure([=](){return render(beg_dod,end_dod);},n)<<";";
    std::cout<<measure([=](){return render(beg_rdod,end_rdod);},n)<<";";
    std::cout<<measure([=](){return render(beg_oop,n);},n)<<";";
    std::cout<<measure([=](){return render(beg_color,beg_x,beg_y,n);},n)<<";";
    std::cout<<measure([=](){return render(beg_dod,n);},n)<<";";
    std::cout<<measure([=](){return render(beg_rdod,n);},n)<<std::endl;
  }
}
