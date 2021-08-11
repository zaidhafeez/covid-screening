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
    NSArray *gender;
}

@end

@implementation ViewController

@synthesize userName,password,mobileNumber,Main,countryPickerView,statePickerView;

/***********************/
/* Start */
/* view did load method*/
/***********************/

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    /***********************/
    /* Editing background start */
    /***********************/
    
    GradientView *gv = [[GradientView alloc] init];
    
    [gv gradientLayer:Main];
    
    /***********************/
    /* Editing background end */
    /***********************/

    
    /***********************/
    /* Assigning data values into array to show in pickerview */
    /***********************/
    
    country = @[@"Japan",@"Singapore",@"China",@"India",@"South Korea"];
    state = @[@"U.P",@"H.P",@"M.P"];
    district = @[@"Mau",@"Aligarh",@"Delhi"];
    gender = @[@"Female",@"Male"];
    
    /***********************/
    /* Assigning End */
    /***********************/

    /***********************/
    /* Text Field of USERNAME, PASSWORD and MOBILE NO. delgate is set Start */
    /***********************/
    
    userName.delegate = self;
    password.delegate = self;
    mobileNumber.delegate = self;
    
    /***********************/
    /* End */
    /***********************/
    
    
    /***********************/
    /* Start */
    /* PickerView initialization*/
    /***********************/
    
    countryPickerView = [[UIPickerView alloc] init];
    countryPickerView.dataSource = self;
    countryPickerView.delegate = self;
    
    statePickerView = [[UIPickerView alloc] init];
    statePickerView.dataSource = self;
    statePickerView.delegate = self;

    _districtPickerView = [[UIPickerView alloc] init];
    _districtPickerView.delegate = self;
    _districtPickerView.dataSource = self;
    
    _genderPickerView = [[UIPickerView alloc] init];
    _genderPickerView.delegate = self;
    _genderPickerView.dataSource = self;
    
    /***********************/
    /* End  assigning picker view*/
    /***********************/
    
    /***********************/
    /* Start */
    /* Tag PickerView*/
    /***********************/
    
    countryPickerView.tag = 1;
    statePickerView.tag = 2;
    _districtPickerView.tag = 3;
    _genderPickerView.tag = 4;

    /***********************/
    /* End Tag */
    /***********************/
    
    /***********************/
    /* Start */
    /* Set the input view as a PickerView*/
    /***********************/
    
    _countryTextField.inputView = countryPickerView;
    _stateTextField.inputView = statePickerView;
    _districtTextField.inputView = _districtPickerView;
    _genderTextField.inputView = _genderPickerView;
    
    /***********************/
    /* End */
    /***********************/

}

/* Did load method End */

/***********************/
/* Start */
/* Different button action */
/***********************/

- (IBAction)didSelectCountry:(UIButton *)sender {
    
    [_countryTextField becomeFirstResponder];
    
}

- (IBAction)didSelectStateTapped:(UIButton *)sender {
    
    [_stateTextField becomeFirstResponder];
    
}
- (IBAction)didSelectDistrict:(UIButton *)sender {
    
    [_districtTextField becomeFirstResponder];
    
}
- (IBAction)didSelectGender:(UIButton *)sender {
    
    [_genderTextField becomeFirstResponder];
    
}

/***********************/
/* button method */
/* End */
/***********************/



- (IBAction)enterButtonClicked:(id)sender {
    
//    textView.text = [NSString stringWithFormat:@"Username: %@\nPassword: %@\nMobile Number: %@",userName.text,password.text,mobileNumber.text ];
    
}

/***********************/
/* Start */
/* keyboard hide action on touch */
/***********************/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [mobileNumber resignFirstResponder];
    [userName resignFirstResponder];
    [password resignFirstResponder];
    [_countryTextField resignFirstResponder];
    [_stateTextField resignFirstResponder];
    [_districtTextField resignFirstResponder];
    [_genderTextField resignFirstResponder];
    
}

/***********************/
/* keyboard hide action on touch */
/* End */
/***********************/


/***********************/
/* Start */
/* keyboard hide action on pressing enter */
/***********************/
-(bool)textFieldShouldReturn:(UITextField *)textField {
    
    return [textField resignFirstResponder];
    
}
/***********************/
/* End */
/* keyboard hide action on pressing enter */
/***********************/

/* Start */
/* Assigning values in  different picker view from different array*/
/***********************/

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
        case 4:
            return gender.count;
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
            break;
        case 4:
            return gender[row];
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
        case 4:
            _genderTextField.text = gender[row];
            break;
            
    }
    
    
}

/* End */
/* Assigning values in  different picker view from different array*/
/***********************/




@end
