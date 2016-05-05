//
//  inputController.m
//  Patient
//
//  Created by Jayesh Wadhwani on 2016-05-05.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import "inputController.h"

@implementation inputController
-(NSString*)inputfromPrompt
{
    char inputchar[255];
    fgets(inputchar, 255, stdin);
    return [NSString stringWithUTF8String:inputchar];
}
@end
