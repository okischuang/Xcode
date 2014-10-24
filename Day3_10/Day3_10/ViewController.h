//
//  ViewController.h
//  Day3_10
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate> {
    IBOutlet UILabel* firstLabel;
    __weak IBOutlet UILabel *secondLabel;
    UITextField* textField2;
    
    __weak IBOutlet UIActivityIndicatorView *labelIndicator;
    
}
-(IBAction)changeFirstLabel;
- (IBAction)changeFirstLabelAgain:(id)sender;
- (IBAction)segmentChange:(id)sender;
- (IBAction)sliderChange:(id)sender;
- (IBAction)sliderTouchDown:(id)sender;
- (IBAction)sliderTouchUpInside:(id)sender;
- (IBAction)switchChange:(id)sender;

@end

