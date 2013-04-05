//
//  UIView+Pulse.h
//  ClippPulseViewDemo
//
//  Created by Craig Stanford on 5/04/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CLPVoidBlock)();

@interface UIView (Pulse)

- (void)pulseWithDuration:(NSTimeInterval)duration size:(CGFloat)size completion:(CLPVoidBlock)completion;
- (void)pulseWithDuration:(NSTimeInterval)duration size:(CGFloat)size repeatCount:(NSInteger)repeatCount completion:(CLPVoidBlock)completion;

@end
