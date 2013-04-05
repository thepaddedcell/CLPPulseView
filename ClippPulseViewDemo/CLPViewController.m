//
//  CLPViewController.m
//  ClippPulseViewDemo
//
//  Created by Craig Stanford on 5/04/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "CLPViewController.h"
#import "UIView+Pulse.h"

@interface CLPViewController ()

@property (nonatomic, strong) IBOutlet UIView* pinkView;

- (IBAction)pulseOncePressed:(id)sender;
- (IBAction)pulseFiveTimesPressed:(id)sender;

@end

@implementation CLPViewController

- (void)pulseOncePressed:(id)sender
{
    [self.pinkView pulseWithDuration:0.6f size:10.f completion:^{
        NSLog(@"Pulse Completed");
    }];
}

- (void)pulseFiveTimesPressed:(id)sender
{
    [self.pinkView pulseWithDuration:0.6f size:10.f repeatCount:5 completion:^{
        NSLog(@"Pulse Five Times Completed");
    }];
}

@end
