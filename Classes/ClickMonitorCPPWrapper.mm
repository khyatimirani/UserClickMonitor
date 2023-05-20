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

ClickMonitorCPP cpp;
- (BOOL)addEventToSystem:(NSString *)key :(NSString *)value {
    cpp.addEventToSystem([key cStringUsingEncoding:NSUTF8StringEncoding], [value cStringUsingEncoding:NSUTF8StringEncoding]);
    return true;
}

-(float)getAggregatedAnswer:(NSString *)key {
    cpp.getAggregatedAnswer([key cStringUsingEncoding:NSUTF8StringEncoding]);
    return  0;
}

@end
