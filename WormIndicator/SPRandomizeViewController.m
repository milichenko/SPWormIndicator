//
//  SPRandomizeViewController.m
//  WormIndicator
//
//  Created by Vladimir Milichenko on 7/7/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import "SPRandomizeViewController.h"
#import "SPWormIndicator.h"

@interface SPRandomizeViewController ()

@property (weak, nonatomic) IBOutlet SPWormIndicator *firstIndicator;
@property (weak, nonatomic) IBOutlet SPWormIndicator *secondIndicator;
@property (weak, nonatomic) IBOutlet SPWormIndicator *thirdIndicator;
@property (weak, nonatomic) IBOutlet SPWormIndicator *fourthIndicator;

@end

@implementation SPRandomizeViewController

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
    
    self.firstIndicator.indicatorBackgroundColor = [UIColor colorWithRed:221 / 255.0f green:220 / 255.0f blue:231 / 255.0f alpha:1.0f];
    self.firstIndicator.indicatorForegroundColor = [UIColor colorWithRed:242 / 255.0f green:122 / 255.0f blue:71 / 255.0f alpha:1.0f];
    
    self.secondIndicator.indicatorBackgroundColor = [UIColor colorWithRed:221 / 255.0f green:220 / 255.0f blue:231 / 255.0f alpha:1.0f];
    self.secondIndicator.indicatorForegroundColor = [UIColor colorWithRed:192 / 255.0f green:136 / 255.0f blue:191 / 255.0f alpha:1.0f];
    
    self.thirdIndicator.indicatorBackgroundColor = [UIColor colorWithRed:221 / 255.0f green:220 / 255.0f blue:231 / 255.0f alpha:1.0f];
    self.thirdIndicator.indicatorForegroundColor = [UIColor colorWithRed:244 / 255.0f green:186 / 255.0f blue:119 / 255.0f alpha:1.0f];
    
    self.fourthIndicator.indicatorBackgroundColor = [UIColor colorWithRed:221 / 255.0f green:220 / 255.0f blue:231 / 255.0f alpha:1.0f];
    self.fourthIndicator.indicatorForegroundColor = [UIColor colorWithRed:106 / 255.0f green:204 / 255.0f blue:209 / 255.0f alpha:1.0f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (IBAction)randomizeAction:(id)sender
{
    self.firstIndicator.progressValue = drand48();
    self.secondIndicator.progressValue = drand48();
    self.thirdIndicator.progressValue = drand48();
    self.fourthIndicator.progressValue = drand48();
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
