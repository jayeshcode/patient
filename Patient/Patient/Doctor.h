//
//  Doctor.h
//  Patient
//
//  Created by Jayesh Wadhwani on 2016-05-05.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@class Patient;
@interface Doctor : NSObject

@property (atomic,strong)NSMutableArray *acceptedPatients;

-(NSString*)askInformation;
-(BOOL)checkHealthcard:(Patient *)p;
-(void)requestMedication:(Patient *)pt;
@end
