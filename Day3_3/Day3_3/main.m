//
//  main.m
//  Day3_3
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //We must put 'nil' at the end of NSArray arrayWithObject
        //NSArray* array = [NSArray arrayWithObjects:@"Jan",@"Feb",@"Mar",@"Apr",@"May",@"Jun", nil];
        NSArray* array = @[@"Feb",@"Mar",@"Apr",@"May",@"Jun"];
        NSMutableArray* mutableArray = array.mutableCopy;
        
        NSLog(@"first element=%@",array[0]);
        NSLog(@"second element=%@",[array objectAtIndex:1]);
        NSLog(@"April in %lu position",[array indexOfObject:@"Apr"]);
        if ([array indexOfObject:@"Dec"] == NSNotFound) {
            NSLog(@"Dec is not in array");
        }
        else {
            NSLog(@"December in %lu position",[array indexOfObject:@"Dec"]);
        }
        int stringIndex = 0;
        for (NSString* monthString in array) {
            NSLog(@"Iterating....index[%d], month is %@",stringIndex,monthString);
            stringIndex++;
        }
        
        for (int i=0; i<array.count; i++) {
            NSLog(@"[%d], month is %@",i,array[i]);
        }
        
        [mutableArray addObject:@"Aug"];
        // using block
        [mutableArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"!Using Block to iterate mutableArray[%lu], month is %@",idx,obj);
        }];
        [mutableArray insertObject:@"Jul" atIndex:[mutableArray indexOfObject:@"Jun"]+1];
        // using block
        [mutableArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"!Using Block to iterate mutableArray[%lu], month is %@",idx,obj);
        }];
        
        
    }
    return 0;
}
