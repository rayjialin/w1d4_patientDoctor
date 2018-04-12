//
//  Patient.h
//  Patient&Doctor
//
//  Created by ruijia lin on 4/12/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
@class Doctor;
@interface Patient : NSObject

@property NSString *name;
@property BOOL healthCard;
@property NSString *medicine;
@property NSString *symptoms;
@property BOOL isMedicineRequest;
@property (nonatomic) NSMutableDictionary *prescriptionHistory;

-(BOOL)visitDoctor:(Doctor *)doctor;
@end
