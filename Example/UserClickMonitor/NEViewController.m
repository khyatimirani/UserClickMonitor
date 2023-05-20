//
//  NEViewController.m
//  UserClickMonitor
//
//  Created by khyati71 on 05/11/2023.
//  Copyright (c) 2023 khyati71. All rights reserved.
//

#import "NEViewController.h"
@import UserClickMonitor;

@interface NEViewController ()

@end

@implementation NEViewController

ClickMonitorCPPWrapper *wrapper;

- (void)viewDidLoad
{
    wrapper = [[ClickMonitorCPPWrapper alloc] init];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)burgerClickAction:(id)sender {
    NSDate * now = [NSDate date];
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
    NSString *newDateString = [outputFormatter stringFromDate:now];
    NSLog(@"newDateString %@", newDateString);
    [wrapper addEventToSystem:@"Key" : newDateString];
    printf("Burger clicked");
    
}

- (IBAction)tenSecondAction:(id)sender {
    [wrapper getAggregatedAnswer:@"Key"];
    printf("Burger clicked");
}

- (IBAction)twentySecondAction:(id)sender {
    printf("Burger clicked");
}

@end
