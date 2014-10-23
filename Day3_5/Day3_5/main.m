//
//  main.m
//  Day3_5
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSDictionary* phoneBook = [NSDictionary dictionaryWithObjectsAndKeys:
//                                   @"111-1111",@"Mark",
//                                   @"222-2222",@"John",
//                                   @"111-1111",@"Ken"
//                                   , nil];
        // create NSDictionary by using literal declaration => literal syntax!
        NSDictionary* phoneBook = @{@"Mark":@"111-1111",
                                    @"John":@"222-2222",
                                    @"Ken":@"111-1111"};
        for(NSString* key in phoneBook) {
            NSLog(@"key=%@, value=%@",key,[phoneBook objectForKey:key]);
        }
        NSLog(@"Mark's phone number is: %@",[phoneBook objectForKey:@"Mark"]);
        NSLog(@"Mark's phone number is: %@",phoneBook[@"Mark"]);
        
        NSDictionary* report = @{@"16G":@500,@"64G":@800,@"128G":@1000};
        for(NSString* key in report) {
            NSLog(@"key=%@ value=%@",key,[report objectForKey:key]);
        }
        
        NSDictionary* legacyReport = [NSDictionary dictionaryWithObjectsAndKeys:
                                      [NSNumber numberWithInt:500],
                                      [NSString stringWithCString:"16G" encoding:NSUTF8StringEncoding],
                                      nil];
        for(NSString* key in legacyReport) {
            NSLog(@"!!key=%@ value=%@",key,[report objectForKey:key]);
        }
    }
    return 0;
}
