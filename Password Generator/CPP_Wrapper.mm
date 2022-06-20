//
//  Generator_Wrapper.mm
//  Password Generator
//
//  Created by Florent Dondjeu Tschoufack on 6/19/22.
//

#import "CPP_Wrapper.h"
#import "Generator.hpp"

@implementation CPP_Wrapper

-(NSString*) generate_password_wrapper:(NSInteger) dashnumb
{
    Generator P;
    NSString* result = [NSString stringWithUTF8String:P.generate_password(dashnumb).c_str()];
                    // convert std::string to NSString so its usable in swift
//    NSLog(@"%@", result);
    
    return result;
}

@end
