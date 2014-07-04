//
//  SPPageContentViewController.m
//  WormIndicator
//
//  Created by Vladimir Milichenko on 7/4/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import "SPPageContentViewController.h"
#import "SPWormIndicator.h"

@interface SPPageContentViewController ()

@property (weak, nonatomic) IBOutlet SPWormIndicator *wormIndicator;

@end

@implementation SPPageContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
        // Custom initialization
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIColor *indicatorForegroundColor = nil;
    
    switch (self.pageIndex)
    {
        case 0:
            indicatorForegroundColor = [UIColor colorWithRed:242 / 255.0f green:122 / 255.0f blue:71 / 255.0f alpha:1.0f];
            break;
        case 1:
            indicatorForegroundColor = [UIColor colorWithRed:192 / 255.0f green:136 / 255.0f blue:191 / 255.0f alpha:1.0f];
            break;
        case 2:
            indicatorForegroundColor = [UIColor colorWithRed:244 / 255.0f green:186 / 255.0f blue:119 / 255.0f alpha:1.0f];
            break;
        case 3:
            indicatorForegroundColor = [UIColor colorWithRed:106 / 255.0f green:204 / 255.0f blue:209 / 255.0f alpha:1.0f];
            break;
        default:
            break;
    }
    
    self.wormIndicator.indicatorBackgroundColor = [UIColor colorWithRed:221 / 255.0f green:220 / 255.0f blue:231 / 255.0f alpha:1.0f];
    self.wormIndicator.indicatorForegroundColor = indicatorForegroundColor;
    self.wormIndicator.value = 0.25f;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
