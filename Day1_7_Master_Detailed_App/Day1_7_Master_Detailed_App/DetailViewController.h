//
//  DetailViewController.h
//  Day1_7_Master_Detailed_App
//
//  Created by Okis Chuang on 2014/10/21.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

