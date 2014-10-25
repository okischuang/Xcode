//
//  addViewController.m
//  Day4_1
//
//  Created by Okis Chuang on 2014/10/24.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import "AddViewController.h"
#import "Beverage.h"
#import "AppDelegate.h"
@interface AddViewController ()<UITextFieldDelegate>

@end

@implementation AddViewController
-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)doAdd:(id)sender {
    Beverage* beverage = [NSEntityDescription insertNewObjectForEntityForName:@"Beverage"
                                                       inManagedObjectContext:self.appDelegate.managedObjectContext];
    beverage.title = self.titleTextField.text;
    beverage.detail = self.detailTextField.text;
    NSError* error;
    if ([self.appDelegate.managedObjectContext save:&error]) {
        NSLog(@"success");
    } else {
        NSLog(@"Fail");
        
    }
    [self.navigationController popViewControllerAnimated:YES];
}
@end
