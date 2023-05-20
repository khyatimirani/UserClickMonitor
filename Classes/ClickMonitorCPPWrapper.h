//
//  ClickMonitorCPPWrapper.h
//  UserClickMonitor
//
//  Created by Khyati Mirani on 18/05/23.
//

#import <Foundation/Foundation.h>
@interface ClickMonitorCPPWrapper : NSObject
- (BOOL)addEventToSystem:(NSString *)key :(NSString *)value;
- (NSMutableArray *)getAggregatedAnswer:(NSString *)key;
@end

