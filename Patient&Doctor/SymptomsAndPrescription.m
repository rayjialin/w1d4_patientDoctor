//
//  SymptomsAndPrescription.m
//  Patient&Doctor
//
//  Created by ruijia lin on 4/12/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "SymptomsAndPrescription.h"

@implementation SymptomsAndPrescription

-(NSMutableDictionary *)prescriptionReference{
    _prescriptionReference = [NSMutableDictionary dictionaryWithDictionary:
                              @{
                                @"headache" : @"medicine1",
                                @"diarreha" : @"medicine2",
                                @"constipation" : @"medicine3",
                                @"stomachache" : @"medicine4",
                                @"cancer" : @"no cure",
                              }];
    
    return _prescriptionReference;
}   
@end
