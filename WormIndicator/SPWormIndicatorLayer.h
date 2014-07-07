//
//  SPWormIndicatorLayer.h
//  WormIndicator
//
//  Created by Vladimir Milichenko on 7/7/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#define WORM_INDICATOR_STANDART_SIZE 56.0f
#define WORM_STANDART_LINE_WIDTH 7.5f;

@interface SPWormIndicatorLayer : CALayer

@property (strong, nonatomic) UIColor *indicatorBackgroundColor;
@property (strong, nonatomic) UIColor *indicatorForegroundColor;

@property (assign, nonatomic) CGFloat progressValue;

@end
