//
//  SecondViewController.m
//  CovidScreening
//
//  Created by Subhi Quraishi on 03/08/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import "SecondViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize nextView, QuestionLabel,nextButton, nextIndex, scroll,Submit;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    GradientView *gv = [[GradientView alloc] init];

    nextIndex = 0;
    
    [gv gradientLayer:nextView];
    
    [scroll setScrollEnabled:YES];
    [scroll setContentSize:CGSizeMake(350, 650)];
    
}

-(void)changeQuestion:(int)nextIndex {
    
    ScreeningQA *sQA = [[ScreeningQA alloc] init];
    
//    NSLog(@"nextIndex %d", nextIndex);
    NSLog(@"Array size %lu", (unsigned long)[sQA.answers count]);
    
    long length = (unsigned long)[sQA.answers count];
    
//
//
    if(nextIndex < [sQA.answers count]){
        
        if (nextIndex ==  length - 1) {
            [Submit setHidden:NO];
            [nextButton setHidden:YES];
        }
        
        NSLog(@"next index: %d", nextIndex);
//        for(int i = 0 ; i < [sQA.answers[nextIndex] count]; i++){
//            NSLog(@"value: %d, %lu",i,  (unsigned long)[sQA.answers[nextIndex] count]);
//            NSLog(@"answer option: %@", sQA.answers[nextIndex][i]);
////            QuestionLabel.text = sQA.answers[nextIndex][i];
////            [QuestionLabel sizeToFit];
//
//        }
        QuestionLabel.text = sQA.questionArray[nextIndex];
            [QuestionLabel sizeToFit];
    }
        
    
    
}

- (IBAction)nextButtonClicked:(UIButton *)sender {
    
//    QuestionLabel.backgroundColor = [UIColor clearColor];
    [self changeQuestion:nextIndex];
    nextIndex++;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
