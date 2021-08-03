//
//  GradientView.h
//  CovidScreening
//
//  Created by Subhi Quraishi on 30/07/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
NS_ASSUME_NONNULL_BEGIN

@interface GradientView : UIView

@property (nonatomic) IBInspectable UIColor *FirstColor;
@property (nonatomic) IBInspectable UIColor *SecondColor;

-(void)gradientLayer:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
