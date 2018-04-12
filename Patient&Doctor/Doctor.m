//
//  Doctor.m
//  Patient&Doctor
//
//  Created by ruijia lin on 4/12/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        _acceptedPatients = [NSMutableArray new];
    }
    return self;
}

-(void)acceptPatient:(Patient *)patient{
    [_acceptedPatients addObject:patient];
}

-(NSString *)prescription:(Patient *)patient{
    SymptomsAndPrescription *prescription = [SymptomsAndPrescription new];
    
//    if ([prescription.prescriptionReference doesContain:patient.symptoms]){
//        [patient.prescriptionHistory[prescription.prescriptionReference ]
//    }
    for (NSString *key in prescription.prescriptionReference){
        if ([patient.symptoms isEqualToString:key]){
            patient.prescriptionHistory[key] = prescription.prescriptionReference[key];
            return prescription.prescriptionReference[key];
        }else{
            //do otherthing if it is a new symptoms
            patient.prescriptionHistory[key] = @"new medicine";
        }
    }
    return @"new medicine";
    
}
@end
