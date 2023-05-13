//
//  ClickMonitorHelper.m
//  Expecta
//
//  Created by Khyati Mirani on 11/05/23.
//

#import <Foundation/Foundation.h>
#import "ClickMonitorHelper.h"

@implementation ClickMonitor

NSMutableArray *clickTimeStamps;

-(BOOL)addEventToSystem:(NSString*)click {
    [clickTimeStamps addObject:click];
}

-(float)getAggregatedAnswer:(int)timeStamp {
    float *counter;
    NSDate *currentDate = [NSDate date];
    for (id object in clickTimeStamps) {
    NSDate *date1 = [self convertStringToDate:object];
        NSTimeInterval secondsBetween = [currentDate timeIntervalSinceDate:date1];
        if (secondsBetween <= timeStamp) {
            counter = counter + 1;
        }
    }
    return *counter;
}

-(NSDate *)convertStringToDate:(NSString*)timeString {
    NSString *dateStr = timeString;

    // Convert string to date object
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"HH:mm:ss"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    return date;
}

@end


