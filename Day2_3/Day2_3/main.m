//
//  main.m
//  Day2_3
//
//  Created by Okis Chuang on 2014/10/22.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car* car1 = [[Car alloc]init];
        car1.currentSpeed = 100;
        Car* car2 = [[Car alloc]init];
        car2.currentSpeed = 90;
        car1.fellowCar = car2;
        BOOL isOverLimit = [car1 isOverLimit:60];
        // insert code here...
        NSLog(@"{%s}Hello, Welcome to OKIS Car Factory!",__FILE__);
        NSLog(@"(%d)You have car1=%@",__LINE__,car1);
        NSLog(@"[%s]Over Limit? %s",__func__, isOverLimit?"True":"False");
        NSLog(@"(%s)direct call",__PRETTY_FUNCTION__);
        [car1 horn];
        NSLog(@"invoke using selector");
        [car1 performSelector:@selector(horn)];
        
        NSLog(@"car1's fellow car speed=%.1f", car1.fellowCar.currentSpeed);
    }
    return 0;
}
