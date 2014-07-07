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

- (id)initWithFrame:(CGRect)frame
{
    self = [self initWithFrame:frame withBackgroundColor:[UIColor whiteColor] foregroundColor:[UIColor blackColor]];
    
    return self;
}

- (id)initWithFrame:(CGRect)frame withBackgroundColor:(UIColor *)backgroundColor foregroundColor:(UIColor *)foregroundColor
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        self.indicatorBackgroundColor = backgroundColor;
        self.indicatorForegroundColor = foregroundColor;
        self.opaque = NO;
        self.clipsToBounds = YES;
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
