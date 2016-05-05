//
//  Doctor.m
//  Patient
//
//  Created by Jayesh Wadhwani on 2016-05-05.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import "Doctor.h"
#import "inputController.h"
@implementation Doctor
-(instancetype)init
{
    self=[super init];
    if (self)
    {
        _acceptedPatients = [[NSMutableArray alloc] init];
       
    
    }
    return self;
}

-(NSString*)askInformation
{
    inputController *o = [[inputController alloc]init];
    //NSLog(@"what is name");
    //NSLog(@"what is age");
    NSLog(@"your healthcard no  TYPE: ");
    return [o inputfromPrompt];
    
}


-(BOOL)checkHealthcard:(Patient*)p{
    
    if ([p.healthcard hasPrefix:@"x01"]) {
        return true;
    }
    return false;
}

-(void)requestMedication:(Patient*)p
{
    
    if ([self.acceptedPatients containsObject:p.healthcard]) {
        NSLog(@"you are eligible for prescription" );
    }
    
    
}

@end
