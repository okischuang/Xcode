//
//  main.m
//  Day3_9
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Editor.h"
#import "PartTimeWorker.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Editor* editor1 = [[Editor alloc]init];
        Editor* editor2 = [[Editor alloc]init];
        PartTimeWorker* part1 = [[PartTimeWorker alloc]init];
        PartTimeWorker* part2 = [[PartTimeWorker alloc]init];
        NSMutableArray* team = @[editor1,editor2,part1,part2,@"hey!"].mutableCopy;
        
        for(id<Publishing> member in team){
            if ([member conformsToProtocol:@protocol(Publishing)]) {
                [member proofRead];
            }
            else {
                NSLog(@"%@ doesn't conform to protocol - %@",member,@protocol(Publishing));
            }
        }
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
