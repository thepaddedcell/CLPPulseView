//
//  UIView+Pulse.m
//  ClippPulseViewDemo
//
//  Created by Craig Stanford on 5/04/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "UIView+Pulse.h"

@implementation UIView (Pulse)

- (void)pulseWithDuration:(NSTimeInterval)duration size:(CGFloat)size completion:(CLPVoidBlock)completion
{
    CGRect originalFrame = self.frame;
    
    CGRect largerFrame = self.frame;
    largerFrame.size.width += size;
    largerFrame.size.height += size;
    largerFrame.origin.x -= size/2;
    largerFrame.origin.y -= size/2;
    
    [UIView animateWithDuration:duration/2.f animations:^{
        self.frame = largerFrame;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:duration/2.f animations:^{
            self.frame = originalFrame;
        } completion:^(BOOL finished) {
            if (completion) {
                completion();
            }
        }];
    }];
}

- (void)pulseWithDuration:(NSTimeInterval)duration size:(CGFloat)size repeatCount:(NSInteger)repeatCount completion:(CLPVoidBlock)completion
{
    [self pulseWithDuration:duration size:size completion:^{
        NSInteger reducedRepeatCount = repeatCount - 1;
        if (reducedRepeatCount > 0) {
            [self pulseWithDuration:duration size:size repeatCount:reducedRepeatCount completion:^{
                if (completion) {
                    completion();
                }
            }];
        }
    }];
}


@end
