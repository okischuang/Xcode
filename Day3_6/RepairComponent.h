//
//  RepairComponent.h
//  Day3_6
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RepairComponent : NSObject
-(id) initWithPartNo:(NSString*) partNo andColor:(NSString*) color;
@property (strong) NSString* partNo;
@property (strong) NSString* color;
@end
