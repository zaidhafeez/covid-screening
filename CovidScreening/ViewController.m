//
//  ViewController.m
//  CovidScreening
//
//  Created by Subhi Quraishi on 29/07/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize userName,password,mobileNumber,textView,Main;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userName.delegate = self;
    password.delegate = self;
    mobileNumber.delegate = self;
    
    GradientView *gv = [[GradientView alloc] init];
    
    [gv gradientLayer:Main];
    
}

- (IBAction)enterButtonClicked:(id)sender {
    
    textView.text = [NSString stringWithFormat:@"Username: %@\nPassword: %@\nMobile Number: %@",userName.text,password.text,mobileNumber.text ];
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [mobileNumber resignFirstResponder];
    [userName resignFirstResponder];
    [password resignFirstResponder];
}

-(bool)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}


@end
