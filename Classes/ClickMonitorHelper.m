//
//  ClickMonitorHelper.m
//  Expecta
//
//  Created by Khyati Mirani on 11/05/23.
//

#import <Foundation/Foundation.h>
#import "ClickMonitorHelper.h"
#import "ClickMonitorCPPWrapper.h"

@implementation ClickMonitorHelper : NSObject
NSDictionary<NSString *, NSString *> *clickTimeStamps = nil;
- (BOOL)addEventToSystem:(NSDictionary<NSString *, NSString *> *)event {
    ClickMonitorCPPWrapper *wrapperObj;
    [wrapperObj hello_cpp_wrapped:(@"Hi calling from Objective C")];
    [wrapperObj addEventToSystem:@"key1" :[event objectForKey:@"key1"]];
    return true;
}
-(float)getAggregatedAnswer:(int)timeStamp {
    int counter = 0;
    for (id object in clickTimeStamps) {
        if ([self checkIfGivenIntervalMatches:object :timeStamp]) {
            counter = counter + 1;
        }
    }
    float a = [[NSNumber numberWithInt: counter] floatValue];
    return a;
}

-(BOOL)checkIfGivenIntervalMatches:(NSString*)timeString :(int)forSeconds {
    NSDate *currentDate = [NSDate date];
    // Convert string to date object
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
    NSDate *date = [dateFormat dateFromString:timeString];
    NSTimeInterval secondsBetween = [currentDate timeIntervalSinceDate:date];
    if (secondsBetween <= forSeconds) {
        return true;
    } else {
        return  false;
    }
}

@end


