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
    
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0,0,320,350)];

    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = Main.bounds;
    gradient.startPoint = CGPointZero;
    gradient.endPoint = CGPointMake(1, 1);
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:34.0/255.0 green:211/255.0 blue:198/255.0 alpha:1.0] CGColor],(id)[[UIColor colorWithRed:145/255.0 green:72.0/255.0 blue:203/255.0 alpha:1.0] CGColor], nil];
    
//    gradient.colors = [UIColor.blackColor.CGColor,UIColor.blueColor.];
    
    [Main.layer insertSublayer:gradient atIndex:0];
    
  //  Main.backgroundColor = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:34.0/255.0 green:211/255.0 blue:198/255.0 alpha:1.0] CGColor],(id)[[UIColor colorWithRed:145/255.0 green:72.0/255.0 blue:203/255.0 alpha:1.0] CGColor], nil];
//    Main.backgroundColor = gradient.colors;
//  [ addSubview:view];
   
    
    
}
- (IBAction)enterButtonClicked:(id)sender {
//    NSString  *str = userName.text;
//    ", str;
    
//    NSString *texto = [[NSString alloc] initWithFormat:@"username: %@\nPassword:  %@",[userName text],[password text]];
//    [textView setText:texto];
    
    textView.text = [NSString stringWithFormat:@"Username: %@\nPassword: %@\nMobile Number: %@",userName.text,password.text,mobileNumber.text ];
    
   
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [mobileNumber resignFirstResponder];
}

-(bool)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}




@end
