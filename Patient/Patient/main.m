//
//  main.m
//  Patient
//
//  Created by Jayesh Wadhwani on 2016-05-05.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       // NSLog(@"Hello, World!");
    
        
        Doctor *doctor = [[Doctor alloc]init];
        Patient *patient = [[Patient alloc]init];
        
        [patient askSpecialisation];
        while (YES)
                {
            
                   
        
        patient.healthcard =[doctor askInformation];
        if([doctor checkHealthcard:patient])
        {
            NSLog((@"Valid health card"));
            [doctor.acceptedPatients addObject:patient.healthcard];
        }  else
            
            NSLog(@"invalid health card");
        
                    [doctor requestMedication:patient];
                    int i=0;
                    for(NSArray *element in doctor.acceptedPatients) {
                        NSLog(@"Accepted patient list :%d %@",i,element);
                        i++;}
                    
                   
                }

    }
    return 0;
}
