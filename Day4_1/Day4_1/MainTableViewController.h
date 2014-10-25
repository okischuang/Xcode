//
//  MainTableViewController.h
//  Day4_1
//
//  Created by Okis Chuang on 2014/10/24.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AppDelegate;
@interface MainTableViewController : UITableViewController

//@property (strong) NSMutableArray* tableData;
//@property (strong) NSMutableArray* titleData;
@property (nonatomic, assign) AppDelegate* appDelegate;
@end
