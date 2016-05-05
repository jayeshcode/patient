//
//  Patient.h
//  Patient
//
//  Created by Jayesh Wadhwani on 2016-05-05.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"


@interface Patient : NSObject

@property (atomic,strong)NSString *healthcard;
-(void)askSpecialisation;

@end
