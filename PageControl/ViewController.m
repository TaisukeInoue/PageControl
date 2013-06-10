//
//  ViewController.m
//  PageControl
//
//  Created by InoueTaisuke on 2013/06/10.
//  Copyright (c) 2013年 TaisukeInoue. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    [scrollView setContentOffset:CGPointMake(320.0f, 0.0f)];
    
    scrollView.pagingEnabled = YES;
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * 3, scrollView.frame.size.height);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.delegate = self;
    
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
	CGFloat pageWidth = scrollView.frame.size.width;
	pageControl.currentPage = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
