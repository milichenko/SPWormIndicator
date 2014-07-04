//
//  SPRootViewController.m
//  WormIndicator
//
//  Created by Vladimir Milichenko on 7/4/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import "SPRootViewController.h"
#import "SPPageContentViewController.h"

@interface SPRootViewController () <UIPageViewControllerDataSource>

@property (strong, nonatomic) NSArray *titlesArray;
@property (strong, nonatomic) UIPageViewController *pageViewController;

@end

@implementation SPRootViewController

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
    
    self.titlesArray = @[@"First Example", @"Second Example", @"Third Example", @"Fourth Example"];
    
    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageViewController.dataSource = self;

    SPPageContentViewController *startingViewController = [self pageContentViewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    // Change the size of page view controller
    self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Methods

- (SPPageContentViewController *)pageContentViewControllerAtIndex:(NSUInteger)index
{
    if (([self.titlesArray count] == 0) || (index >= [self.titlesArray count]))
    {
        return nil;
    }
    
    SPPageContentViewController *pageConteneViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentViewController"];
    pageConteneViewController.pageIndex = index;
    
    return pageConteneViewController;
}

#pragma mark - UIPageViewControllerDataSource

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((SPPageContentViewController*) viewController).pageIndex;
    
    if ((index == 0) || (index == NSNotFound))
    {
        return nil;
    }
    
    index--;
    
    return [self pageContentViewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((SPPageContentViewController*) viewController).pageIndex;
    
    if (index == NSNotFound)
    {
        return nil;
    }
    
    index++;
    
    if (index == [self.titlesArray count])
    {
        return nil;
    }
    
    return [self pageContentViewControllerAtIndex:index];
}


@end
