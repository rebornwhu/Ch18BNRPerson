//
//  BNREmployee.m
//  Ch18BNRPerson
//
//  Created by Xiao Lu on 3/15/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import "BNREmployee.h"

@interface BNREmployee ()
{
    NSMutableArray *_assets;
}
@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}


- (double)yearsOfEmployment
{
    if (self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    }
    else {
        return 0;
    }
}


- (void)addAsset:(BNRAsset *)a
{
    if (!_assets) {
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}


- (void)removeAsset:(NSInteger)i
{
    if (!_assets
        || ([_assets count] - 1 < i)
        ) {
        return;
    }
    
    [_assets removeObjectAtIndex:i];
    
}


- (unsigned int)valueOfAssets
{
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}


- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>",
            self.employeeID, self.valueOfAssets];
}


- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
