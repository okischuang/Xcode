//
//  Car.h
//  Day3_8
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (strong) NSString* licensePlate;
@property (strong) NSString* vendor;
-(id) initWithLicensePlate:(NSString*) licensePlate Vendor:(NSString*) vendor;
@end
