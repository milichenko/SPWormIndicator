//
//  SPWormIndicator.h
//  WormIndicator
//
//  Created by Vladimir Milichenko on 7/4/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

@import UIKit;

#define WORM_INDICATOR_STANDART_SIZE 56.0f

@interface SPWormIndicator : UIView

@property (assign, nonatomic) CGFloat value;

@property (strong, nonatomic) UIColor *indicatorBackgroundColor;
@property (strong, nonatomic) UIColor *indicatorForegroundColor;

- (id)initWithFrame:(CGRect)frame withBackgroundColor:(UIColor *)backgroundColor foregroundColor:(UIColor *)foregroundColor;

@end
