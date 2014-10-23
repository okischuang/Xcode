//
//  main.m
//  Day3_7
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableSet* mutableSet = [[NSMutableSet alloc]initWithCapacity:2];
        NSMutableArray* nameList = @[@"Mark",@"John"].mutableCopy;
        [mutableSet addObject:nameList];
        NSLog(@"nameList added, result=%@",mutableSet);
        NSMutableArray* nameList2 = @[@"Mark",@"John"].mutableCopy;
        [mutableSet addObject:nameList2];
        NSLog(@"nameList2 added, result=%@",mutableSet);
        NSMutableArray* nameList3 = @[@"Mark"].mutableCopy;
        [mutableSet addObject:nameList3];
        NSLog(@"nameList3 added, result=%@",mutableSet);
        [nameList3 addObject:@"John"];
        NSLog(@"after John added to namelist3, result=%@",mutableSet);
        NSMutableSet* mutableSet2 = mutableSet.mutableCopy;
        NSLog(@"after get a copy, result=%@",mutableSet2);
    }
    return 0;
}
