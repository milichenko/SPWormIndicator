//
//  SPWormIndicatorLayer.m
//  WormIndicator
//
//  Created by Vladimir Milichenko on 7/7/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import "SPWormIndicatorLayer.h"

#define WORM_INDICATOR_STANDART_SIZE 56.0f
#define WORM_INDICATOR_STANDART_LINE_WIDTH 7.5f;

@implementation SPWormIndicatorLayer

@dynamic progressValue;
@dynamic indicatorBackgroundColor;
@dynamic indicatorForegroundColor;

+ (BOOL)needsDisplayForKey:(NSString *)key
{
    if ([key isEqualToString:@"progressValue"])
    {
        return YES;
    }
    else
    {
        return [super needsDisplayForKey:key];
    }
}

- (id)actionForKey:(NSString *)aKey
{
    if ([aKey isEqualToString:@"progressValue"])
    {
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:aKey];
        animation.fromValue = [self.presentationLayer valueForKey:aKey];
        
        return animation;
    }
    
	return [super actionForKey:aKey];
}

- (void)drawInContext:(CGContextRef)ctx
{
    CGRect rect = self.frame;
    
    CGPoint center = CGPointMake(rect.size.width / 2.0f, rect.size.height / 2.0f);
    CGFloat minSize = MIN(rect.size.width, rect.size.height);
    
    CGFloat sizePercents = minSize / WORM_INDICATOR_STANDART_SIZE;
    
    CGFloat lineWidth = sizePercents * WORM_INDICATOR_STANDART_LINE_WIDTH;
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
    
    CGContextAddArc(ctx, 0.0f, 0.0f, radius, 0.0f, endAngle * self.progressValue, 0);
    
    CGContextSetStrokeColorWithColor(ctx, self.indicatorForegroundColor.CGColor);
    CGContextStrokePath(ctx);
    
    CGContextRestoreGState(ctx);
    
    [super drawInContext:ctx];
}

@end
