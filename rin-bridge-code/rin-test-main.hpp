//
//  rin-test-main.hpp
//  rin-test
//
//  Created by hrbrmstr on 8/26/19.
//  Copyright © 2019 Bob Rudis. All rights reserved.
//

#ifndef rin_test_main_hpp
#define rin_test_main_hpp

#import <Foundation/Foundation.h>

#if defined(__cplusplus)
extern "C" {
#endif

void r_init();
double rcpp_mean(double one_more_val);
NSString *cpp_hello_world();

#if defined(__cplusplus)
}
#endif

#endif /* rin_test_main_hpp */
