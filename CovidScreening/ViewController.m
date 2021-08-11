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
    NSArray *state;
    NSArray *district;
}

@end

@implementation ViewController

@synthesize userName,password,mobileNumber,Main,countryPickerView,statePickerView;



- (IBAction)didSelectCountry:(UIButton *)sender {

//    if([_countryPickerView isHidden]){
//
//        [_countryPickerView setHidden:false];
//        [_countryTextField resignFirstResponder];
    
    [_countryTextField becomeFirstResponder];
    [_countryTextField becomeFirstResponder];
    [_countryTextField becomeFirstResponder];

//
//    }

}

- (IBAction)didSelectStateTapped:(UIButton *)sender {
    
    [_stateTextField becomeFirstResponder];
    
}
- (IBAction)didSelectDistrict:(UIButton *)sender {
    
    [_districtTextField becomeFirstResponder];
    
}





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userName.delegate = self;
    password.delegate = self;
    mobileNumber.delegate = self;
    
    countryPickerView = [[UIPickerView alloc] init];
    countryPickerView.dataSource = self;
    countryPickerView.delegate = self;
    
    statePickerView = [[UIPickerView alloc] init];
    statePickerView.dataSource = self;
    statePickerView.delegate = self;
    
    _districtPickerView = [[UIPickerView alloc] init];
    _districtPickerView.delegate = self;
    _districtPickerView.dataSource = self;
    
    _countryTextField.inputView = countryPickerView;
    _stateTextField.inputView = statePickerView;
    _districtTextField.inputView = _districtPickerView;
//    _stateTextField.inputAccessoryView = pickerView;
    
//    _countryPickerView.dataSource = self;
//    _countryPickerView.delegate = self;
    
    
    
    GradientView *gv = [[GradientView alloc] init];
    
    [gv gradientLayer:Main];
    
//    [_countryPickerView setHidden:true];
    
    country = @[@"Japan",@"Singapore",@"China",@"India",@"South Korea"];
    state = @[@"U.P",@"H.P",@"M.P"];
    district = @[@"Mau",@"Aligarh",@"Delhi"];
    
    
    countryPickerView.tag = 1;
    statePickerView.tag = 2;
    _districtPickerView.tag = 3;
    
    
}

- (IBAction)enterButtonClicked:(id)sender {
    
//    textView.text = [NSString stringWithFormat:@"Username: %@\nPassword: %@\nMobile Number: %@",userName.text,password.text,mobileNumber.text ];
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [mobileNumber resignFirstResponder];
    [userName resignFirstResponder];
    [password resignFirstResponder];
    [_countryTextField resignFirstResponder];
    [_stateTextField resignFirstResponder];
    [_districtTextField resignFirstResponder];
    
}

-(bool)textFieldShouldReturn:(UITextField *)textField {
    
    return [textField resignFirstResponder];
    
}


- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    
    return 1;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    switch (pickerView.tag) {
        case 1:
            return country.count;
            break;
        case 2:
            return state.count;
            break;
        case 3:
            return district.count;
        default:
            return 1;
            break;
    }
    
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    switch (pickerView.tag) {
        case 1:
            return country[row];
            break;
        case 2:
            return state[row];
            break;
        case 3:
            return district[row];
        default:
            return @"data not found";
            break;
    }
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    switch (pickerView.tag) {
        case 1:
            _countryTextField.text = country[row];
            break;
            
        case 2:
            _stateTextField.text =  state[row];
            break;
            
        case 3:
            _districtTextField.text =  district[row];
            break;
            
    }
    
    
}




@end
