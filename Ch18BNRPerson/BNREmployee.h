//
//  BNREmployee.h
//  Ch18BNRPerson
//
//  Created by Xiao Lu on 3/15/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

@interface BNREmployee : BNRPerson

@property (nonatomic, copy) NSSet *assets;

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;


- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
/* - (void)removeAsset:(NSInteger)i; */
- (unsigned int)valueOfAssets;

@end
