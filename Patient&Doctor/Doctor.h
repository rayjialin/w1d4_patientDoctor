//
//  Doctor.h
//  Patient&Doctor
//
//  Created by ruijia lin on 4/12/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "SymptomsAndPrescription.h"

@class Patient;
@interface Doctor : NSObject

@property NSString *name;
@property (nonatomic, strong) NSMutableArray *acceptedPatients;

-(void)acceptPatient:(Patient *)patient;
-(NSString *)prescription:(Patient *)patient;
@end
