//
//  main.m
//  Day3_8
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car* myCar = [[Car alloc] initWithLicensePlate:@"ABC-123" Vendor:@"BMW"];
        
        NSLog(@"Your car...%@",myCar);
    }
    return 0;
}
