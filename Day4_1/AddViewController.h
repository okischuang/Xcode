//
//  addViewController.h
//  Day4_1
//
//  Created by Okis Chuang on 2014/10/24.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Beverage.h"
@class AppDelegate;

@interface AddViewController : UIViewController

//@property (weak, nonatomic) IBOutlet
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;

@property (weak, nonatomic) IBOutlet UITextField *detailTextField;
- (IBAction)doAdd:(id)sender;
@property (assign, nonatomic) AppDelegate* appDelegate;
@end
