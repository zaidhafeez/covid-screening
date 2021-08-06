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
@synthesize answers;

@synthesize Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15;

@synthesize A1op1,A1op2,A1op3,A1op4,
            A2op1,A2op2,A2op3,A2op4,A2op5,A2op6,A2op7,A2op8,A2op9,A2op10,A2op11,A2op12,
            A3op1,A3op2,A3op3,A3op4,A3op5,A3op6,
            A4op1,A4op2,
            A5op1,A5op2,A5op3,A5op4,
            A6op1,A6op2,A6op3,
            A7op1,A7op2,A7op3,A7op4,A7op5,A7op6,A7op7,A7op8,A7op9,A7op10,
            A8op1,A8op2,A8op3,A8op4,
            A9op1,A9op2,A9op3,A9op4,
            A10op1,A10op2,A10op3,A10op4,A10op5,
            A11op1,A11op2,
            A12op1,A12op2;


/* Question Start */

- (NSString *)Q1 {
    
    Q1 = @"1.Please let us know your current body temperature in degree Fahrenheit (Normal body temperature is 98.6 F):";
    return Q1;
    
}

- (NSString *)Q2 {
    
    Q2 = @"2.Are you experiencing any of the symptoms below (Mark all those applicable)";
    return Q2;
    
}

- (NSString *)Q3 {
    
    Q3 = @"3.Additionally, please verify if you are experiencing any of the symptoms below (Mark all those applicable)";
    return Q3;
    
}

- (NSString *)Q4 {
    
    Q4 = @"4.Have you had close contact with someone diagnosed with COVID-19 or been notified that you may have been exposed to it? ";
    return Q4;
    
}
- (NSString *)Q5 {
    
    Q5 = @"5.In the last 10 days, have you been tested for COVID 19?\"Only include your most recent saliva, oral swab, or nasal swab test.\"";
    return Q5;
    
}
- (NSString *)Q6 {
    
    Q6 = @"6.How severe are your symptoms?";
    return Q6;
    
}

- (NSString *)Q7 {
    
    Q7 = @"7.Do any of these apply to you? Select all that apply.";
    return Q7;
    
}

- (NSString *)Q8 {
    
    Q8 = @"8.Please select your travel and exposure details";
    return Q8;
    
}

- (NSString *)Q9 {
    
    Q9 = @"9.How have your symptoms progressed over the last 48 hrs?";
    return Q9;
    
}

- (NSString *)Q10 {
    
    Q10 = @"10.In the last 14 days, did any of these apply to you? Select all that apply.";
    return Q10;
    
}

- (NSString *)Q11 {
    
    Q11 = @"11.Do you live in a long-term care facility?\"This includes nursing homes or assisted living facilities\"";
    return Q11;
}

- (NSString *)Q12 {
    
    Q12 = @"12.In the last 14 days, did you work or volunteer in a healthcare facility?\"This includes a clinic, hospital, emergency room, other medical setting, or long-term care facility.\"";
    return Q12;

}

/* Question End */
/****************/

/* Answer */


/* Answer [1] Start */

- (NSString *)A1op1 {
    
    A1op1 = @"Normal (96F-98.6F)";
    return A1op1;
    
}

- (NSString *)A1op2 {
    
    A1op2 = @"Fever (98.6F-102F)";
    return A1op2;
    
}

- (NSString *)A1op3 {
    
    A1op3 = @"High Fever (>102F)";
    return A1op3;
    
}

- (NSString *)A1op4 {
    
    A1op4 = @"Don't know";
    return A1op4;
    
}

/* Answer [1] End */
/****************/

/* Answer [2] Start */

- (NSString *)A2op1 {
    
    A2op1 = @"Dry Cough";
    return A2op1;
    
}

- (NSString *)A2op2 {
    
    A2op2 = @"Loss or diminished sense of smell or taste";
    return A2op2;
    
}

- (NSString *)A2op3 {
    
    A2op3 = @"Sore throat";
    return A2op3;
    
}

- (NSString *)A2op4 {
    
    A2op4 = @"Change in Appetite";
    return A2op4;
    
}

- (NSString *)A2op5 {
    
    A2op5 = @"Fever or chills";
    return A2op5;
    
}

- (NSString *)A2op6 {
    
    A2op6 = @"Muscle or body aches";
    return A2op6;
    
}

- (NSString *)A2op7 {
    
    A2op7 = @"Diarrhea";
    return A2op7;
    
}

- (NSString *)A2op8 {
    
    A2op8 = @"Headache";
    return A2op8;
    
}

- (NSString *)A2op9 {
    
    A2op9 = @"Nausea or vomiting";
    return A2op9;
    
}

- (NSString *)A2op10 {
    
    A2op10 = @"New fatigue";
    return A2op10;
    
}

- (NSString *)A2op11 {
    
    A2op11 = @"Congestion or runny nose";
    return A2op11;
    
}

- (NSString *)A2op12 {
    
    A2op12 = @"None of these";
    return A2op12;
    
}

/* Answer [2] End */
/****************/

/* Answer [3] Start */

- (NSString *)A3op1 {
    
    A3op1 = @"Moderate to severe cough";
    return A3op1;
    
}

- (NSString *)A3op2 {
    
    A3op2 = @"Feeling breathless";
    return A3op2;
    
}

- (NSString *)A3op3 {
    
    A3op3 = @"Difficulty in breathing";
    return A3op3;
    
}

- (NSString *)A3op4 {
    
    A3op4 = @"Drowsiness";
    return A3op4;
    
}

- (NSString *)A3op5 {
    
    A3op5 = @"Persistent pain and pressure in chest";
    return A3op5;
    
}

- (NSString *)A3op6 {
    
    A3op6 = @"Severe weakness";
    return A3op6;
}

/* Answer [3] End */
/****************/

/* Answer [4] Start */

- (NSString *)A4op1 {
    
    A4op1 = @"Yes";
    return A4op1;
    
}

- (NSString *)A4op2 {
    
    A4op2 = @"No";
    return A4op2;
    
}

/* Answer [4] End */
/****************/

/* Answer [5] Start */

- (NSString *)A5op1 {
    
    A5op1 = @"I was tested and my result was positive for COVID 19";
    return A5op1;
    
}

- (NSString *)A5op2 {
    
    A5op2 = @"I was tested and my result was negative for COVID 19";
    return A5op2;
    
}

- (NSString *)A5op3 {
    
    A5op3 = @"I was tested but I have not yet received my test results";
    return A5op3;
    
}

- (NSString *)A5op4 {
    
    A5op4 = @"I have not been tested in the last 10 days";
    return A5op4;
    
}

/* Answer [5] End */
/****************/

/* Answer [6] Start */

- (NSString *)A6op1 {
    
    A6op1 = @"Symptoms have little to no impact -- I am able to do normal activities like exercising.";
    return A6op1;
    
}

- (NSString *)A6op2 {
    
    A6op2 = @"Symptoms are having some impact --I can only do some daily activities like cleaning the house or making food.";
    return A6op2;
   
}

- (NSString *)A6op3 {
    
    A6op3 = @"Symptoms are having a major impact -- I can only do what’s necessary such as using the bathroom or eating.";
    return A6op3;
    
}

/* Answer [6] End */
/****************/

/* Answer [7] Start */

- (NSString *)A7op1 {
    
    A7op1 = @"Obesity";
    return A7op1;
    
}

- (NSString *)A7op2 {
    
    A7op2 = @"Smoking or vaping";
    return A7op2;
    
}

- (NSString *)A7op3 {
    
    A7op3 = @"Pregnancy";
    return A7op3;
    
}

- (NSString *)A7op4 {
    
    A7op4 = @"Diabetes, high blood pressure, chronic kidney disease, or liver disease";
    return A7op4;
    
}

- (NSString *)A7op5 {
    
    A7op5 = @"Chronic lung disease, such as moderate to severe asthma, COPD (chronic obstructive pulmonary disease), cystic fibrosis, or pulmonary fibrosis";
    return A7op5;
    
}

- (NSString *)A7op6 {
    
    A7op6 = @"Serious heart condition, such as heart failure, prior heart attack, or cardiomyopathy";
    return A7op6;
    
}

- (NSString *)A7op7 {
    
    A7op7 = @"Weakened immune system from HIV, cancer treatment, use of medicines causing immune suppression, or other factors";
    return A7op7;
    
}

- (NSString *)A7op8 {
    
    A7op8 = @"Stroke, dementia, or other cerebrovascular disease or neurologic condition";
    return A7op8;
    
}

- (NSString *)A7op9 {
    
    A7op9 = @"Sickle cell disease, thalassemia, or other blood disorder";
    return A7op9;
    
}

- (NSString *)A7op10 {
    
    A7op10 = @"None of the above";
    return A7op10;
    
}

/* Answer [7] End */
/****************/

/* Answer [8] Start */

- (NSString *)A8op1 {
    
    A8op1 = @"No travel history";
    return A8op1;
    
}

- (NSString *)A8op2 {
    
    A8op2 = @"No contact with anyone with symptoms";
    return A8op2;
    
}

- (NSString *)A8op3 {
    
    A8op3 = @"History of travel or meeting in affected geographical area in last 14 days";
    return A8op3;
    
}

- (NSString *)A8op4 {
    
    A8op4 = @"Close contact with a person with fever and cough in last 14 days";
    return A8op4;
    
}

/* Answer [8] End */
/****************/

/* Answer [9] Start */

- (NSString *)A9op1 {
    
    A9op1 = @"Improved";
    return A9op1;
    
}

- (NSString *)A9op2 {
    
    A9op2 = @"No Change";
    return A9op2;
    
}

- (NSString *)A9op3 {
    
    A9op3 = @"Worsened ";
    return A9op3;
    
}

- (NSString *)A9op4 {
    
    A9op4 = @"Worsened Considerably ";
    return A9op4;
    
}

/* Answer [9] End */
/****************/

/* Answer [10] Start */

- (NSString *)A10op1 {
    
    A10op1 = @"I lived with someone who has COVID 19";
    return A10op1;
    
}

- (NSString *)A10op2 {
    
    A10op2 = @"I cared for someone who has COVID 19";
    return A10op2;
    
}

- (NSString *)A10op3 {
    
    A10op3 = @"For at least 15 minutes, I was within 6 feet of someone who has COVID 19";
    return A10op3;
    
}

- (NSString *)A10op4 {
    
    A10op4 = @"I might have been exposed to COVID 19";
    return A10op4;
    
}

- (NSString *)A10op5 {
    
    A10op5 = @"I've had no known exposure to COVID 19";
    return A10op5;
    
}

/* Answer [10] End */
/****************/

/* Answer [11] Start */

- (NSString *)A11op1 {
    
    A11op1 = @"I live in a long-term care facility";
    return A11op1;
    
}

- (NSString *)A11op2 {
    
    A11op2 = @"I do not live in a long-term care facility";
    return A11op2;
    
}

/* Answer [11] End */
/****************/

/* Answer [12] Start */

- (NSString *)A12op1 {
    
    A12op1 = @"I worked or volunteered in a healthcare facility in the last 14 days";
    return A12op1;
    
}

- (NSString *)A12op2 {
    
    A12op2 = @"I did not work or volunteer in a healthcare facility in the last 14 days";
    return A12op2;
    
}

/* Answer [12] End */
/****************/

/* Answer End */
/****************/

/* Assigning Question into array */

- (NSArray *)questionArray{

    questionArray = @[[self Q1],[self Q2],[self Q3],[self Q4],[self Q5],[self Q6],[self Q7],[self Q8],[self Q9],[self Q10],[self Q11],[self Q12]];
//    questionArray = @[Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12];
//    questionArray = [NSArray arrayWithObjects:[self Q10], nil];
//    NSLog(@"ooo %@:- ",[questionArray objectAtIndex:0]);
    return questionArray;
}

/* Assigning Question End */
/****************/

/* Assigning Answer into array */

- (NSArray *)answers {
    
    answers = @[@[[self A1op1],[self A1op2], [self A1op3],[self A1op4]],
                @[[self A2op1],[self A2op2],[self A2op3],[self A2op4],[self A2op5],[self A2op6],[self A2op7],[self A2op8],[self A2op9],[self A2op10],[self A2op11],[self A2op12]],
                @[[self A3op1],[self A3op2],[self A3op3],[self A3op4],[self A3op5],[self A3op6]],
                @[[self A4op1],[self A4op2]],
                @[[self A5op1],[self A5op2],[self A5op3],[self A5op4]],
                @[[self A6op1],[self A6op2],[self A6op3]],
                @[[self A7op1],[self A7op2],[self A7op3],[self A7op4],[self A7op5], [self A7op6],[self A7op7],[self A7op8],[self A7op9],[self A7op10]],
                @[[self A8op1],[self A8op2],[self A8op3],[self A8op4]],
                @[[self A9op1],[self A9op2],[self A9op3],[self A9op4]],
                @[[self A10op1],[self A10op2],[self A10op3],[self A10op4],[self A10op5]],
                @[[self A11op1],[self A11op2]],
                @[[self A12op1],[self A12op2]]];
    
//    for(int i = 0; i < [answers count]; i++){
//        for (int j = 0; j < [answers[i] count]; j++) {
//            NSLog(@"answer \n%@ " , answers[i][j]);
//        }
//    }
    
    return answers;
    
}







@end
