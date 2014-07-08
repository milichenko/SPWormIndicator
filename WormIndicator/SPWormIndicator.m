//
//  SPWormIndicator.m
//  WormIndicator
//
//  Created by Vladimir Milichenko on 7/4/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import "SPWormIndicator.h"
#import "SPWormIndicatorLayer.h"

@implementation SPWormIndicator

+ (Class)layerClass
{
    return [SPWormIndicatorLayer class];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
        self.layer.contentsScale = [[UIScreen mainScreen] scale];
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [self initWithFrame:frame backgroundColor:[UIColor whiteColor] foregroundColor:[UIColor blackColor]];
    
    return self;
}

- (id)initWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor foregroundColor:(UIColor *)foregroundColor
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        self.indicatorBackgroundColor = backgroundColor;
        self.indicatorForegroundColor = foregroundColor;
        self.layer.contentsScale = [[UIScreen mainScreen] scale];
        [self.layer setNeedsDisplay];
    }
    
    return self;
}

- (CGFloat)progressValue
{
    SPWormIndicatorLayer *layer = (SPWormIndicatorLayer *)self.layer;
    return layer.progressValue;
}

- (void)setProgressValue:(CGFloat)progressValue
{
    SPWormIndicatorLayer *layer = (SPWormIndicatorLayer *)self.layer;
    layer.progressValue = progressValue;
    layer.indicatorBackgroundColor = self.indicatorBackgroundColor;
    layer.indicatorForegroundColor = self.indicatorForegroundColor;
}

@end
