//
//  ScreeningQA.m
//  CovidScreening
//
//  Created by Subhi Quraishi on 04/08/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import "ScreeningQA.h"

@implementation ScreeningQA


@synthesize questionArray;
@synthesize Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15;




- (NSString *)Q1 {
    Q1 = @"1.    Please let us know your current body temperature in degree Fahrenheit (Normal body temperature is 98.6 F):";
   
//    NSString *const q2 = @"zaid";
    return Q1;
}
- (NSString *)Q2 {
    Q2 = @"2.    Are you experiencing any of the symptoms below (Mark all those applicable)";
    return Q2;
    
}
- (NSString *)Q3 {
    Q3 = @"3.    Additionally, please verify if you are experiencing any of the symptoms below (Mark all those applicable)";
    return Q3;
}
- (NSString *)Q4 {
    Q4 = @"4.    Have you had close contact with someone diagnosed with COVID-19 or been notified that you may have been exposed to it? ";
    return Q4;
}
- (NSString *)Q5 {
    Q5 = @"5.    In the last 10 days, have you been tested for COVID 19?\"Only include your most recent saliva, oral swab, or nasal swab test.\"";
    return Q5;
}
- (NSString *)Q6 {
    Q6 = @"6.    How severe are your symptoms?";
    return Q6;
}
- (NSString *)Q7 {
    Q7 = @"7.    Do any of these apply to you? Select all that apply.";
    return Q7;
}
- (NSString *)Q8 {
    Q8 = @"8.    Please select your travel and exposure details";
    return Q8;
}
- (NSString *)Q9 {
    Q9 = @"9.    How have your symptoms progressed over the last 48 hrs?";
    return Q9;
}
- (NSString *)Q10 {
    Q10 = @"10.    In the last 14 days, did any of these apply to you? Select all that apply.";
    return Q10;
}
- (NSString *)Q11 {
    Q11 = @"11.    Do you live in a long-term care facility?\"This includes nursing homes or assisted living facilities\"";
    return Q11;
}
- (NSString *)Q12 {
    Q12 = @"12.    In the last 14 days, did you work or volunteer in a healthcare facility?\"This includes a clinic, hospital, emergency room, other medical setting, or long-term care facility.\"";
    return Q12;

}



- (NSArray *)questionArray{
//    for (int i = 0; i < 12; i++) {
//      ;
//    }
    questionArray = @[[self Q1],[self Q2],[self Q3],[self Q4],[self Q5],[self Q6],[self Q7],[self Q8],[self Q9],[self Q10],[self Q11],[self Q12]];
//    questionArray = @[Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12];
//    questionArray = [NSArray arrayWithObjects:[self Q10], nil];
//    NSLog(@"ooo %@:- ",[questionArray objectAtIndex:0]);
    return questionArray;
}








@end
