//
//  rin-test-main.cpp
//  rin-test
//
//  Created by hrbrmstr on 8/26/19.
//  Copyright © 2019 Bob Rudis. All rights reserved.
//

#include "rin-test-main.hpp"
#include <string>
#include <R.h>
#include <Rcpp.h>
#include <RInside.h>

void r_init() {
  RInside R(0, NULL);
}

NSString *cpp_hello_world() {
  
  std::string hw = "Hello, world!";
          
  return([NSString stringWithUTF8String:hw.c_str()]);
  
}

double rcpp_mean(double one_more_val) {
  
  Rcpp::NumericVector x = Rcpp::NumericVector::create(1, 2, 3, one_more_val);
  return(Rcpp::mean(x));
  
}
