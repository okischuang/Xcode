//
//  main.m
//  Day3_1
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>
#define COMPLETE_RATE 70 //This is predeclared by preprocessor
static const int kMaxSpeeed = 100; //This is compiled by compiler
typedef NS_ENUM(NSInteger, ProductType){
//enum ProductType:NSInteger {
    IPhone4=5,
    IPhone4S,
    IPhone5,
    IPhone5S,
    IPhone6,
    IPhone6Plus
};
//typedef enum ProductType ProductType;
//enum MyOptions {
typedef NS_ENUM(NSUInteger, MyOptions) {
    Anti_Glossing = 1<<0,
    Protector = 1<<1,
    Anti_Bullet = 1<<2,
    Mobile_Charger = 1<<3
};
//typedef enum MyOptions MyOptions;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSString* formatString = [NSString stringWithFormat:@"Car with average speed = %d, max speed = %d, complete %d%%\n",50,kMaxSpeeed,COMPLETE_RATE];
//        NSLog(@"stringWithFormat = %@", formatString);

        //enum ProductType myItem = IPhone6Plus;
        ProductType myItem = IPhone6;
        switch (myItem) {
            case IPhone6Plus:
                // myItem is a NSInteger which is a long type. We use %ld here
                NSLog(@"Customer choose code: %ld-iPhone6Plus",myItem);
                break;
            case IPhone6:
                NSLog(@"Customer choose code: %ld-iPhone6",myItem);
                break;
            default:
                break;
        }
        
        MyOptions currentOption = Anti_Bullet | Anti_Glossing | Mobile_Charger ;
        if (currentOption&Anti_Glossing) {
            NSLog(@"Customer bought Anti-Glossing feature");
        }
        if (currentOption&Anti_Bullet) {
            NSLog(@"Customer bought Anti-Bullet feature");
        }
        if (currentOption&Mobile_Charger) {
            NSLog(@"Customer bought Mobile-Charger feature");
        }
    }
    return 0;
}
