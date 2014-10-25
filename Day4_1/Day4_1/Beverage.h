//
//  Beverage.h
//  Day4_1
//
//  Created by Okis Chuang on 2014/10/24.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Beverage : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * detail;

@end
