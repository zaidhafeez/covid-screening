//
//  ViewController.h
//  CovidScreening
//
//  Created by Subhi Quraishi on 29/07/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientView.h"
@interface ViewController : UIViewController<UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIButton *selectCountry;
@property (weak, nonatomic) IBOutlet UITextField *countryTextField;
@property (weak, nonatomic) IBOutlet UIPickerView *countryPickerView;

@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *mobileNumber;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIView *Main;





@end

