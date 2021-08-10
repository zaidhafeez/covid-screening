//
//  ViewController.m
//  CovidScreening
//
//  Created by Subhi Quraishi on 29/07/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *country;
}

@end

@implementation ViewController

@synthesize userName,password,mobileNumber,textView,Main;



- (IBAction)didSelectCountry:(UIButton *)sender {
    
    if([_countryPickerView isHidden]){
        
        [_countryPickerView setHidden:false];
        [_countryTextField resignFirstResponder];
        
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userName.delegate = self;
    password.delegate = self;
    mobileNumber.delegate = self;
    
    _countryPickerView.dataSource = self;
    _countryPickerView.delegate = self;
    
    
    
    GradientView *gv = [[GradientView alloc] init];
    
    [gv gradientLayer:Main];
    
    [_countryPickerView setHidden:true];
    
    country = @[@"Japan",@"Singapore",@"China",@"India",@"South Korea"];
    
}

- (IBAction)enterButtonClicked:(id)sender {
    
    textView.text = [NSString stringWithFormat:@"Username: %@\nPassword: %@\nMobile Number: %@",userName.text,password.text,mobileNumber.text ];
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [mobileNumber resignFirstResponder];
    [userName resignFirstResponder];
    [password resignFirstResponder];
    [_countryTextField resignFirstResponder];
    
}

-(bool)textFieldShouldReturn:(UITextField *)textField {
    
    return [textField resignFirstResponder];
    
}


- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    
    return 1;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return country.count;
    
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return country[row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    _countryTextField.text = country[row];
    [_countryPickerView setHidden:true];
    
}




@end
