//
//  SecondViewController.h
//  CovidScreening
//
//  Created by Subhi Quraishi on 03/08/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientView.h"


NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *nextView;
@property (weak, nonatomic) IBOutlet UILabel *QuestionLabel;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;


@end

NS_ASSUME_NONNULL_END
