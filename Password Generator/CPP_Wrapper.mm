//
//  Generator_Wrapper.m
//  Password Generator
//
//  Created by Florent Dondjeu Tschoufack on 6/19/22.
//

#import "CPP_Wrapper.h"
#import "Generator.hpp"


@implementation CPP_Wrapper

-(void) generate_password_wrapper:(NSInteger) dashcount
{
    Generator P;
    P.generate_password(dashcount);
}

@end
