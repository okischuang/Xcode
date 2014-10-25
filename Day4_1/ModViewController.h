//
//  modViewController.h
//  Day4_1
//
//  Created by Okis Chuang on 2014/10/24.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Beverage.h"
#import "AppDelegate.h"

@interface ModViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *detailTextField;
- (IBAction)doModify:(id)sender;

@property (assign, nonatomic) Beverage* currentBeverage;
@property (assign, nonatomic) AppDelegate* appDelegate;
@end
