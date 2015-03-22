    //
//  main.m
//  Ch18BNRPerson
//
//  Created by Xiao Lu on 3/15/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - 1/10.0;
            mikey.employeeID = i;
            
            [employees addObject:mikey];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            BNREmployee * randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
            
            [allAssets addObject:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@", allAssets);
        
        NSLog(@"Giving up ownership of arrays");
        
        allAssets = nil;
        employees = nil;
        
        
//        -------------------------------------------------------------------------
        
        // The following code is used for Challenge 2 in chapter 21
//        BNREmployee *employee = [[BNREmployee alloc] init];
//        
//        for (int i = 0; i < 10; i++) {
//            BNRAsset *asset = [[BNRAsset alloc] init];
//            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
//            asset.label = currentLabel;
//            asset.resaleValue = 350 + i * 17;
//
//            [employee addAsset:asset];
//        }
//        NSLog(@"%@", employee);
//        
//        
//        [employee removeAsset:5];
//        NSLog(@"%@", employee);
        
    }
    
    sleep(100);
    return 0;
}
