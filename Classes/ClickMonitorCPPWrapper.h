//
//  ClickMonitorCPPWrapper.h
//  UserClickMonitor
//
//  Created by Khyati Mirani on 18/05/23.
//

#import <Foundation/Foundation.h>
@interface ClickMonitorCPPWrapper : NSObject
- (void)hello_cpp_wrapped:(NSString *)name;
- (BOOL)addEventToSystem:(NSString *)key :(NSString *)value;
- (float)getAggregatedAnswer:(int)timeStamp;
@end

