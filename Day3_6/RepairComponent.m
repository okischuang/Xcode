//
//  RepairComponent.m
//  Day3_6
//
//  Created by Okis Chuang on 2014/10/23.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import "RepairComponent.h"
@implementation RepairComponent
-(id) initWithPartNo:(NSString *)partNo andColor:(NSString *)color {
    self = [super init];
    if (self) {
        _partNo = partNo;
        _color = color;
    }
    return self;
}

-(BOOL) isEqual:(id)object {
    RepairComponent* target = (RepairComponent*) object;
    if (self == object) {
        return true;
    }
    if ([self class] != [object class]) {
        return false;
    }
    if ([self.partNo isEqualToString:[target partNo]] &&
        [self.color isEqualToString:[target color]]) {
        return true;
    }
    return false;
}

-(NSUInteger) hash {
    NSString*  content = [NSString stringWithFormat:@"%@%@",
                          self.partNo, self.color
                          ];
    return content.hash;
}
@end
