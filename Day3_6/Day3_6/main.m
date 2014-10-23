//
//  main.m
//  Day3_6
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RepairComponent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RepairComponent* component1 = [[RepairComponent alloc]initWithPartNo:@"A001" andColor:@"BLUE"];
        RepairComponent* component2 = [[RepairComponent alloc]initWithPartNo:@"A001" andColor:@"BLUE"];
        NSLog(@"A==B?%@",(component1 == component2)?@"YES":@"NO");
        NSLog(@"A is equal to B?%@",[component1 isEqual:component2]?@"YES":@"NO");
        
        NSLog(@"component1 hash=%lu",[component1 hash]);
        NSLog(@"component2 hash=%lu",[component2 hash]);
    }
    return 0;
}
