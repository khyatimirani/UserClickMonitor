//
//  ClickMonitorCPPWrapper.m
//  UserClickMonitor
//
//  Created by Khyati Mirani on 18/05/23.
//

#import "ClickMonitorCPPWrapper.h"
#include "ClickMonitorCPP.hpp"
#include <map>
@implementation ClickMonitorCPPWrapper
- (void)hello_cpp_wrapped:(NSString *)name {
    ClickMonitorCPP cpp;
    cpp.hello_cpp([name cStringUsingEncoding:NSUTF8StringEncoding]);
}

- (BOOL)addEventToSystem:(NSString *)key :(NSString *)value {
    ClickMonitorCPP cpp;
    cpp.addEventToSystem([key cStringUsingEncoding:NSUTF8StringEncoding], [value cStringUsingEncoding:NSUTF8StringEncoding]);
    printf("Called from c++ class");
    return true;
}

-(float)getAggregatedAnswer:(int)timeStamp {
//    ClickMonitorCPP cpp;
//    cpp.getAggregatedAnswer(timeStamp, <#const std::vector<int> &clickTimeStamps#>)
    return  0;
}

@end
