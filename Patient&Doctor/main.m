//
//  main.m
//  Patient&Doctor
//
//  Created by ruijia lin on 4/12/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *patientList = [NSMutableArray new];
        
        Doctor *doctor1 = [Doctor new];
        doctor1.name = @"doctor1";

        Patient *patient1 = [Patient new];
        patient1.name = @"patient1";
        patient1.symptoms = @"diarreha";
        patient1.isMedicineRequest = YES;
        patient1.healthCard = YES;
        [patientList addObject:patient1];

        Patient *patient2 = [Patient new];
        patient2.name = @"patient2";
        patient2.symptoms = @"constipation";
        patient2.isMedicineRequest = YES;
        patient2.healthCard = NO;
        [patientList addObject:patient2];

        Patient *patient3 = [Patient new];
        patient3.name = @"patient3";
        patient3.symptoms = @"headaaaache";
        patient3.isMedicineRequest = YES;
        patient3.healthCard = YES;
        [patientList addObject:patient3];

        
        for (Patient *patient in patientList){

            if ([patient visitDoctor:doctor1]){
                // if patient has health card and accepted by doctor
                NSLog(@"\n%@ has health card, %@ is accepted", patient.name, patient.name);
                [doctor1.acceptedPatients addObject:patient];
            }else{
                NSLog(@"\n%@ does not have health card.", patient.name);
            }

        }

        for (Patient *acceptedPatient in doctor1.acceptedPatients){
            if (acceptedPatient.isMedicineRequest){
                NSString *medicine = [doctor1 prescription:acceptedPatient];
                NSLog(@"\n%@ has requested medicine, the medicine '%@' is given to treat '%@'.", acceptedPatient.name, medicine, acceptedPatient.symptoms);
            }

        }
        
    }
    return 0;
}
