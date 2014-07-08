//
//  SPWormIndicatorLayer.h
//  WormIndicator
//
//  Created by Vladimir Milichenko on 7/7/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface SPWormIndicatorLayer : CALayer

@property (strong, nonatomic) UIColor *indicatorBackgroundColor;
@property (strong, nonatomic) UIColor *indicatorForegroundColor;

@property (assign, nonatomic) CGFloat progressValue;

@end
