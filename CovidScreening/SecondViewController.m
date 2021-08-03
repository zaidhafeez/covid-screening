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

@synthesize nextView,QuestionLabel,nextButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    GradientView *gv = [[GradientView alloc] init];
    
    [gv gradientLayer:nextView];
    
    
    
    
    
    
    
}
- (IBAction)nextButtonClicked:(UIButton *)sender {
    
    QuestionLabel.text = @"Zaid";
    NSLog(@"action method");
    
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
