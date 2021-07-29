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

@synthesize userName,password,mobileNumber,textView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userName.delegate = self;
    password.delegate = self;
    mobileNumber.delegate = self;
    
    
}
- (IBAction)enterButtonClicked:(id)sender {
//    NSString  *str = userName.text;
//    ", str;
    
    NSString *texto = [[NSString alloc] initWithFormat:@"username: %@\nPassword:  %@",[userName text],[password text]];
    [textView setText:texto];
    
//    textView.text = @"username:  @[userName.]";
    
   
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [mobileNumber resignFirstResponder];
}

-(bool)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}


@end
