//
//  ModelController.h
//  Day1_8_Page_Based_App
//
//  Created by Okis Chuang on 2014/10/21.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end

