//
//  ViewController.m
//  Day3_10
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString* message = @"Upper label cannot be empty";
    if (textField.tag == 2) {
        message = @"Lower label cannot be empty";
    }
    if ([textField.text length] != 0) {
        [textField resignFirstResponder];
    }
    else {
        UIAlertView* alertView =
        [[UIAlertView alloc]
         initWithTitle:@"Warning"
         message:message
         delegate:nil
         cancelButtonTitle:@"OK"
         otherButtonTitles:nil, nil];
        [alertView show];
    }
    
    return true;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    firstLabel.text = @"My First App!";
    secondLabel.text = @"This is second label";
    textField2 = [[UITextField alloc]initWithFrame:CGRectMake(20, 245, 280, 30)];
    textField2.delegate = self;
    textField2.placeholder = @"manual generated";
    textField2.borderStyle = UITextBorderStyleRoundedRect;
    textField2.tag = 2;
    [self.view addSubview:textField2];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeFirstLabelAgain:(id)sender {
    firstLabel.text = @"My First App!";
}

- (IBAction)segmentChange:(id)sender {
    UISegmentedControl* segmentControl = (UISegmentedControl*) sender;
    NSLog(@"value changed to %ld",(long)segmentControl.selectedSegmentIndex);
}

- (IBAction)sliderChange:(id)sender {
    UISlider* slider = (UISlider*) sender;
    NSString* displayMessage = [NSString stringWithFormat:@"value=%.1f",slider.value];
    secondLabel.text = displayMessage;
}

- (IBAction)sliderTouchDown:(id)sender {
    secondLabel.textColor = [UIColor redColor];
    //NSLog(@"Touch Down");
}

- (IBAction)sliderTouchUpInside:(id)sender {
    secondLabel.textColor = [UIColor blueColor];
    //NSLog(@"Touch Up");
}

- (IBAction)switchChange:(id)sender {
    UISwitch* mySwitch = (UISwitch*) sender;
    if (mySwitch.isOn) {
        [labelIndicator startAnimating];
    }
    else {
        [labelIndicator stopAnimating];
    }
}

-(IBAction)changeFirstLabel {
    firstLabel.text = @"Button Clicked!";
}

@end
