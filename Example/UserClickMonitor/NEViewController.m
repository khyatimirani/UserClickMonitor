//
//  NEViewController.m
//  UserClickMonitor
//
//  Created by khyati71 on 05/11/2023.
//  Copyright (c) 2023 khyati71. All rights reserved.
//

#import "NEViewController.h"
@import UserClickMonitor;
#import <UserClickMonitor/Source/ClickMonitorHelper.h>

@interface NEViewController ()

@end

@implementation NEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)burgerClickAction:(id)sender {
    printf("Burger clicked");
    
}

- (IBAction)tenSecondAction:(id)sender {
    printf("Burger clicked");
}

- (IBAction)twentySecondAction:(id)sender {
    printf("Burger clicked");
}

@end
