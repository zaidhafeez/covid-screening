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

@synthesize userName,password,mobileNumber,Main,countryPickerView,statePickerView,registerButton,countryTextField,stateTextField,genderTextField,districtTextField;

/***********************/
/* Start */
/* view did load method*/
/***********************/

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.Main.backgroundColor = UIColor[(patternImage: UIImage(named: "background.png"))]
    
    self.Main.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.jpg"]];
    /***********************/
    /* Editing background start */
    /***********************/
//    registerButton.userInteractionEnabled = false;
//    [self checkTextField];
//    GradientView *gv = [[GradientView alloc] init];
//    
//    [gv gradientLayer:Main];
    
    /***********************/
    /* Editing background end */
    /***********************/
    

    
//    / Register button edit
    registerButton.alpha = 1;
    registerButton.layer.cornerRadius = 22.0;
    registerButton.layer.shadowColor = [[UIColor blackColor] CGColor];
    registerButton.layer.shadowOpacity = 0.3;
    registerButton.layer.shadowRadius = 20;
    registerButton.layer.shadowOffset = CGSizeMake(0.0, 5.0);
    
    registerButton.userInteractionEnabled = false;
    
    
    
    
    
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
    countryPickerView.backgroundColor = [UIColor whiteColor];
    
    UIToolbar *toolBar = [[UIToolbar alloc] init];
    toolBar.barStyle = UIBarStyleDefault;
    toolBar.tintColor = [UIColor orangeColor];
    [toolBar sizeToFit];
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(didTapDone)];
//    UIBarButtonItem *cancel = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:self action:@selector(action)];
    
    UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
//    NSArray *buttons = [NSArray arrayWithObjects: cancel, flexibleSpace, done, nil];
    
    [toolBar setItems:[NSArray arrayWithObjects:flexibleSpace, done, nil]  animated:false];
    
    
    
    
    
    statePickerView = [[UIPickerView alloc] init];
    statePickerView.dataSource = self;
    statePickerView.delegate = self;
    statePickerView.backgroundColor = [UIColor whiteColor];
    

    _districtPickerView = [[UIPickerView alloc] init];
    _districtPickerView.delegate = self;
    _districtPickerView.dataSource = self;
    _districtPickerView.backgroundColor = [UIColor whiteColor];
    
    _genderPickerView = [[UIPickerView alloc] init];
    _genderPickerView.delegate = self;
    _genderPickerView.dataSource = self;
    _genderPickerView.backgroundColor = [UIColor whiteColor];
    
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
    
    countryTextField.inputView = countryPickerView;
    stateTextField.inputView = statePickerView;
    districtTextField.inputView = _districtPickerView;
    genderTextField.inputView = _genderPickerView;
    
    countryTextField.inputAccessoryView = toolBar;
    stateTextField.inputAccessoryView = toolBar;
    districtTextField.inputAccessoryView = toolBar;
    genderTextField.inputAccessoryView = toolBar;
    
    registerButton.hidden = true;

    
    /***********************/
    /* End */
    /***********************/

}
   /* End */
/* Did load method End */

/***********************/
/* Start */
/* Different button action */
/***********************/

- (IBAction)didSelectCountry:(UIButton *)sender {
    
    [countryTextField becomeFirstResponder];
    
}

- (IBAction)didSelectStateTapped:(UIButton *)sender {
    
    [stateTextField becomeFirstResponder];
    
}
- (IBAction)didSelectDistrict:(UIButton *)sender {
    
    [districtTextField becomeFirstResponder];
    
}
- (IBAction)didSelectGender:(UIButton *)sender {
    
    [genderTextField becomeFirstResponder];
    
}

-(void)didTapDone {
    [genderTextField resignFirstResponder];
    [districtTextField resignFirstResponder];
    [stateTextField resignFirstResponder];
    [countryTextField resignFirstResponder];
}

//-(void)checkTextField{
//    NSLog(@"checkfield running");
//    if(!registerButton.userInteractionEnabled){
//
//        if([userName hasText] && [password hasText] && [mobileNumber hasText]){
//
//            NSLog(@"hello i have not any text");
//            registerButton.userInteractionEnabled = true;
//
//        }
//
//    }
//}

/***********************/
/* button method */
/* End */
/***********************/
-(void)checkTextField {
    if (!registerButton.userInteractionEnabled) {
        if ([userName hasText] && [mobileNumber hasText] && [password hasText] && [countryTextField hasText] && genderTextField.hasText && stateTextField.hasText && districtTextField.hasText) {
            registerButton.userInteractionEnabled = true;
            registerButton.hidden = false;
            printf("i am running isnide check textfield");
        }
        else {
            registerButton.userInteractionEnabled = false;
        }
    }
}





- (IBAction)enterButtonClicked:(id)sender {
    
//    textView.text = [NSString stringWithFormat:@"Username: %@\nPassword: %@\nMobile Number: %@",userName.text,password.text,mobileNumber.text ];
    
//    if([userName hasText] && [password hasText] && [mobileNumber hasText]){
//
//        NSLog(@"hello i have not any text");
//        registerButton.userInteractionEnabled = true;
//
//    }
//    else{
////        registerButton.userInteractionEnabled = false;
//        NSLog(@"i am else");
//    }
    
    NSLog(@"Now I am running");
    
    
    
}

/***********************/
/* Start */
/* keyboard hide action on touch */
/***********************/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [mobileNumber resignFirstResponder];
    [userName resignFirstResponder];
    [password resignFirstResponder];
    [countryTextField resignFirstResponder];
    [stateTextField resignFirstResponder];
    [districtTextField resignFirstResponder];
    [genderTextField resignFirstResponder];
    
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
    
//    if ([textField hasText])
//    {
//        //do your work
//        NSLog(@"length %lu", textField.text.length);
////        NSLog(@"length %@", textField.text != nil);
////        NSLog(@"length %@", [textField.text isEqual:@""] );
//        NSLog(@"I have a number");
//        [self checkTextField];
//    }
//    else
//    {
//        NSLog(@"I don't have a number");
//        //through error
//        registerButton.userInteractionEnabled = false;
//
//    }
    
    return [textField resignFirstResponder];
    
}


- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    if ([textField hasText])
    {
        //do your work
        NSLog(@"length %lu", textField.text.length);
        //        NSLog(@"length %@", textField.text != nil);
        //        NSLog(@"length %@", [textField.text isEqual:@""] );
        NSLog(@"I have a number");
        [self checkTextField];
    }
    else
    {
        NSLog(@"I don't have a number");
        //through error
        registerButton.userInteractionEnabled = false;
        
    }
    
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
            
            countryTextField.text = country[row];
            [self checkTextField];
            
            break;
            
        case 2:
            stateTextField.text =  state[row];
            [self checkTextField];
            break;
            
        case 3:
            districtTextField.text =  district[row];
            [self checkTextField];
            break;
        case 4:
            genderTextField.text = gender[row];
            [self checkTextField];
            break;
            
    }
    
    
}

/* End */
/* Assigning values in  different picker view from different array*/
/***********************/




@end
