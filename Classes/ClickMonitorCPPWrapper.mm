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

-(NSMutableArray *)getAggregatedAnswer:(NSString *)key {
    std::array<float, 3> floatArray = {1.0f, 2.0f, 3.0f};
    floatArray = cpp.getAggregatedAnswer([key cStringUsingEncoding:NSUTF8StringEncoding]);
    // Converting std::array to NSArray
    NSMutableArray *objcArray = [NSMutableArray array];
    for (int i = 0; i < floatArray.size(); i++) {
        [objcArray addObject:@(floatArray[i])];
    }
    return  objcArray;
}
@end
