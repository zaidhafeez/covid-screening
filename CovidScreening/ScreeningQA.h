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
//    NSArray *answers;
    NSString *Q1,*Q2,*Q3,*Q4,*Q5,*Q6,*Q7,*Q8,*Q9,*Q10,*Q11,*Q12,*Q13,*Q14,*Q15;
    
    
}

//extern NSString *const q1;
@property(nonatomic, retain) NSArray *questionArray;
@property(nonatomic, retain) NSString *Q1,*Q2,*Q3,*Q4,*Q5,*Q6,*Q7,*Q8,*Q9,*Q10,*Q11,*Q12,*Q13,*Q14,*Q15;
//- (NSArray *)questionArray;




@end

NS_ASSUME_NONNULL_END
