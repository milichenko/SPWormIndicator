//
//  SPWormIndicator.h
//  WormIndicator
//
//  Created by Vladimir Milichenko on 7/4/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

@import UIKit;

@interface SPWormIndicator : UIView

@property (assign, nonatomic) CGFloat progressValue;

@property (strong, nonatomic) UIColor *indicatorBackgroundColor;
@property (strong, nonatomic) UIColor *indicatorForegroundColor;

- (id)initWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor foregroundColor:(UIColor *)foregroundColor;

@end
