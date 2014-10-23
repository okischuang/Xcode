//
//  Car.m
//  Day3_8
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import "Car.h"

@implementation Car
-(id)initWithLicensePlate:(NSString *)licensePlate Vendor:(NSString *)vendor {
    self = [super init];
    if (self) {
        _licensePlate = licensePlate;
        _vendor = vendor;
    }
    return  self;
}
-(NSString*) description {
    NSString* result = [NSString stringWithFormat:@"(%@,%p,%@)",
                        [self class],
                        self,
                        @{@"LicensePlate":self.licensePlate,
                        @"vendor":self.vendor}];
    return result;
}
@end
