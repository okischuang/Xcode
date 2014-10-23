//
//  Car.h
//  Day2_3
//
//  Created by Okis Chuang on 2014/10/22.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject {
    int speedMax; // maximum speed
    int factoryYear; // factory year
    //float currentSpeed; // current speed
    float avergeConsumption; // average consumption
    float currentFuelAmount; // current fuel amount
}

-(float) maxDistance;
-(int) currentCarAge;
-(BOOL) isOverLimit:(int) maxSpeedLimit;
-(void)horn;

@property float currentSpeed;
@property (strong) Car* fellowCar;
@end
