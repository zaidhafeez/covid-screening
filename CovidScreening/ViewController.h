//
//  ViewController.h
//  CovidScreening
//
//  Created by Subhi Quraishi on 29/07/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "GradientView.h"
#import "WebService.h"

@interface ViewController : UIViewController<UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIButton *selectCountry;
@property (weak, nonatomic) IBOutlet UIButton *selectState;
@property (weak, nonatomic) IBOutlet UIButton *selectDistrict;
@property (weak, nonatomic) IBOutlet UIButton *selectGender;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
@property (weak, nonatomic) IBOutlet UITextField *countryTextField;
@property (weak, nonatomic) IBOutlet UITextField *stateTextField;
@property (weak, nonatomic) IBOutlet UITextField *districtTextField;
@property (weak, nonatomic) IBOutlet UITextField *genderTextField;

@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *mobileNumber;
@property (nonatomic, retain) UIPickerView *countryPickerView;
@property (nonatomic, retain) UIPickerView *statePickerView;
@property (nonatomic, retain) UIPickerView *districtPickerView;
@property (nonatomic, retain) UIPickerView *genderPickerView;
@property (strong, nonatomic) IBOutlet UIView *Main;







@end

