//
//  ClickMonitorHelper.h
//  Pods
//
//  Created by Khyati Mirani on 12/05/23.
//

#ifndef ClickMonitorHelper_h
#define ClickMonitorHelper_h

@interface ClickMonitorHelper: NSObject

@property (assign, nonatomic) NSString * clickTimeStamp;

- (BOOL)addEventToSystem:(NSString*)click :(NSString*)clickTimeStamp;

- (NSDate*)convertStringToDate:(NSString*)timeString;

- (float)getAggregatedAnswer:(int)timeStamp;

@end
#endif /* ClickMonitorHelper_h */

