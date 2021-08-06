//
//  ScreeningQA.h
//  CovidScreening
//
//  Created by Subhi Quraishi on 04/08/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScreeningQA : NSObject
{
    
    NSArray *questionArray;
    NSArray *answers;
    
    NSString *Q1,*Q2,*Q3,*Q4,*Q5,*Q6,*Q7,*Q8,*Q9,*Q10,*Q11,*Q12,*Q13,*Q14,*Q15;
    
    NSString *A1op1,*A1op2,*A1op3,*A1op4,
    *A2op1,*A2op2,*A2op3,*A2op4,*A2op5,*A2op6,*A2op7,*A2op8,*A2op9,*A2op10,*A2op11,*A2op12,
    *A3op1,*A3op2,*A3op3,*A3op4,*A3op5,*A3op6,
    *A4op1,*A4op2,
    *A5op1,*A5op2,*A5op3,*A5op4,
    *A6op1,*A6op2,*A6op3,
    *A7op1,*A7op2,*A7op3,*A7op4,*A7op5,*A7op6,*A7op7,*A7op8,*A7op9,*A7op10,
    *A8op1,*A8op2,*A8op3,*A8op4,
    *A9op1,*A9op2,*A9op3,*A9op4,
    *A10op1,*A10op2,*A10op3,*A10op4,*A10op5,
    *A11op1,*A11op2,
    *A12op1,*A12op2;

}

//extern NSString *const q1;
@property(nonatomic, retain) NSArray *questionArray;
@property(nonatomic, retain) NSArray *answers;

@property(nonatomic, retain) NSString *Q1,*Q2,*Q3,*Q4,*Q5,*Q6,*Q7,*Q8,*Q9,*Q10,*Q11,*Q12,*Q13,*Q14,*Q15;

//- (NSArray *)questionArray;

@property(nonatomic, retain) NSString *A1op1,*A1op2,*A1op3,*A1op4,*A2op1,
                                    *A2op2,*A2op3,*A2op4,*A2op5,*A2op6,*A2op7,*A2op8,*A2op9,*A2op10,*A2op11,*A2op12,
                                    *A3op1,*A3op2,*A3op3,*A3op4,*A3op5,*A3op6,
                                    *A4op1,*A4op2,
                                    *A5op1,*A5op2,*A5op3,*A5op4,
                                    *A6op1,*A6op2,*A6op3,
                                    *A7op1,*A7op2,*A7op3,*A7op4,*A7op5,*A7op6,*A7op7,*A7op8,*A7op9,*A7op10,
                                    *A8op1,*A8op2,*A8op3,*A8op4,
                                    *A9op1,*A9op2,*A9op3,*A9op4,
                                    *A10op1,*A10op2,*A10op3,*A10op4,*A10op5,
                                    *A11op1,*A11op2,
                                    *A12op1,*A12op2;




@end

NS_ASSUME_NONNULL_END
