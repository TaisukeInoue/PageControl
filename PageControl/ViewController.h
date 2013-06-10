//
//  ViewController.h
//  PageControl
//
//  Created by InoueTaisuke on 2013/06/10.
//  Copyright (c) 2013年 TaisukeInoue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>
{
    IBOutlet UIScrollView *scrollView;
    IBOutlet UIPageControl *pageControl;
}

@end
