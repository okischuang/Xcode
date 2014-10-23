//
//  main.m
//  Day3_4
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSSet* monthSet = [NSSet setWithObjects:@"Jan",@"Feb",@"Mar",@"Apr",@"May",@"Jun",@"Jan",@"Mar", nil];
//        NSSet* monthSet2 = [NSSet setWithObjects:@"Jan",@"Feb",@"Mar",@"Apr",@"May",@"Jun",@"Jan",@"Mar", nil];
//        BOOL isEqualSet = [monthSet isEqualToSet:monthSet2]?YES:NO;
//        // iterate elements by for loop
//        for(NSString* month in monthSet){
//            NSLog(@"[%@]",month);
//        }
//        [monthSet allObjects];
//        NSLog(@"NSSet1 is equal to NSSet2? %@",isEqualSet?@"Yes":@"No");
        
        NSCountedSet* monthSet = [NSCountedSet setWithCapacity:6];
        [monthSet addObject:@"Jan"];
        [monthSet addObject:@"Jan"];
        [monthSet addObject:@"Feb"];
        [monthSet addObject:@"Mar"];
        [monthSet addObject:@"Mar"];
        [monthSet addObject:@"Apr"];
        [monthSet addObject:@"Apr"];
        [monthSet addObject:@"Apr"];
        
        // iterate elements by for loop
        for(NSString* month in monthSet){
            NSLog(@"[%@:%lu]",month, (unsigned long)[monthSet countForObject:month]);
        }
        
        [monthSet removeObject:@"Jan"];
        [monthSet removeObject:@"Mar"];
        [monthSet removeObject:@"Apr"];
        
        // iterate elements by for loop
        for(NSString* month in monthSet){
            NSLog(@"![%@:%lu]",month, (unsigned long)[monthSet countForObject:month]);
        }
    }
    return 0;
}
