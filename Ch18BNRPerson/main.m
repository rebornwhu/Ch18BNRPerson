    //
//  main.m
//  Ch18BNRPerson
//
//  Created by Xiao Lu on 3/15/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BNREmployee *mikey = [[BNREmployee alloc] init];
        
        /*
        [mikey setWeightInKilos:96];
        [mikey setHeightInMeters:1.8];
         */
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Mar 31st, 2014"];
        NSLog(@"%@ hried on %@", mikey, mikey.hireDate);
        
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        NSLog(@"mikey is %.2f meters tall and weights %d kilograms", height, weight);
        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
        
        float bmi = [mikey bodyMassIndex];
        //NSLog(@"mikey has a BMI of %f", bmi);
        double years = [mikey yearsOfEmployment];
        NSLog(@"BMI of %.2f has worked with us for %.2f years", bmi, years);
    }
    return 0;
}
