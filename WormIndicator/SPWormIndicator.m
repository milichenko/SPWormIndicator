//
//  SPWormIndicator.m
//  WormIndicator
//
//  Created by Vladimir Milichenko on 7/4/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import "SPWormIndicator.h"

#define WORM_STANDART_LINE_WIDTH 7.5f;

@implementation SPWormIndicator

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
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGPoint center = CGPointMake(rect.size.width / 2.0f, rect.size.height / 2.0f);
    CGFloat minSize = MIN(rect.size.width, rect.size.height);
    
    CGFloat sizePercents = minSize / WORM_INDICATOR_STANDART_SIZE;
    
    CGFloat lineWidth = sizePercents * WORM_STANDART_LINE_WIDTH;
    CGFloat radius = (minSize - lineWidth) / 2.0f;
    
    CGContextSaveGState(ctx);
    CGContextTranslateCTM(ctx, center.x, center.y);
    CGContextRotateCTM(ctx, -M_PI * 0.5);
    
    CGContextSetLineWidth(ctx, lineWidth);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    
    CGFloat endAngle = M_PI * 2.0f;
    
    CGContextBeginPath(ctx);
    
    CGContextAddArc(ctx, 0.0f, 0.0f, radius, 0.0f, endAngle, 0);
    
    CGContextSetStrokeColorWithColor(ctx, self.indicatorBackgroundColor.CGColor);
    CGContextStrokePath(ctx);
    
    CGContextBeginPath(ctx);
    
    CGContextAddArc(ctx, 0.0f, 0.0f, radius, 0.0f, endAngle * self.value, 0);
    
    CGContextSetStrokeColorWithColor(ctx, self.indicatorForegroundColor.CGColor);
    CGContextStrokePath(ctx);

    CGContextRestoreGState(ctx);
}

@end
