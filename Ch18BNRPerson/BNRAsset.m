//
//  BNRAsset.m
//  Ch18BNRPerson
//
//  Created by Xiao Lu on 3/21/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d assigned to %@>", self.label, self.resaleValue, self.holder];
    }
    else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",
                self.label, self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
