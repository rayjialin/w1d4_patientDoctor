//
//  Patient.m
//  Patient&Doctor
//
//  Created by ruijia lin on 4/12/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(BOOL)visitDoctor:(Doctor *)doctor{
    if (_healthCard){
        return YES;
    }else{
        return NO;
    }
}
@end
