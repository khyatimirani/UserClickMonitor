//
//  ClickMonitorHelper.m
//  Expecta
//
//  Created by Khyati Mirani on 11/05/23.
//

#import <Foundation/Foundation.h>
#import "ClickMonitorHelper.h"

@implementation ClickMonitorHelper : NSObject
NSMutableArray *clickTimeStamps = nil;
-(BOOL)addEventToSystem:(NSString*)click :(NSString*)clickTimeStamp {
    NSArray *array = [[NSArray alloc] initWithObjects:clickTimeStamp,nil];
    if (clickTimeStamps == nil)  {
        clickTimeStamps = [[NSMutableArray alloc]  initWithObjects:clickTimeStamp,nil];
    } else {
        [clickTimeStamps addObject:array];
    }
    return true;
}
-(float)getAggregatedAnswer:(int)timeStamp {
    int *counter = 0;
    NSDate *currentDate = [NSDate date];
    for (id object in clickTimeStamps) {
    NSDate *date1 = [self convertStringToDate:object];
        NSTimeInterval secondsBetween = [currentDate timeIntervalSinceDate:date1];
        if (secondsBetween <= timeStamp) {
            counter = counter + 1;
        }
    }
    float a = [[NSNumber numberWithInt: *counter] floatValue];
    return a;
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


