//
//  Car.m
//  Day2_3
//
//  Created by Okis Chuang on 2014/10/22.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import "Car.h"

@implementation Car
//@synthesize currentSpeed = mCurrentSpeed;

-(id)init {
    self = [super init];
    if (self) { // self is not null, equal to if(self != null)
        speedMax = 180;
        factoryYear = 2010;
        _currentSpeed = 0;
        avergeConsumption = 17.5;
        currentFuelAmount = 70;
    }
    return self;
}
//-(float)currentSpeed {
//    return currentSpeed;
//}
//-(void)setCurrentSpeed:(float)p_currentSpeed {
//    currentSpeed = p_currentSpeed;
//}

-(void)horn {
    NSLog(@"Bah Bah Bah!!");
    NSLog(@"%@,%@,%@,%@",NSStringFromSelector(_cmd),
          NSStringFromClass([self class]),
          [[NSString stringWithUTF8String:__FILE__] lastPathComponent],
          [NSThread callStackSymbols]);
}

-(int)currentCarAge {
    NSDateComponents* components =
    [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit
        fromDate:[NSDate date] ];
    NSInteger year = [components year];
    return (int)year-factoryYear;
}
-(float)maxDistance {
    return avergeConsumption*currentFuelAmount;
}
-(BOOL)isOverLimit:(int)maxSpeedLimit {
    return (_currentSpeed > maxSpeedLimit?YES:NO);
}
@end
