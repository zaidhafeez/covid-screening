//
//  GradientView.m
//  CovidScreening
//
//  Created by Subhi Quraishi on 30/07/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import "GradientView.h"
IB_DESIGNABLE

@implementation GradientView


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
//- (instancetype)init {
//
//    if(self = [super init]) {
//        self.FirstColor = [UIColor clearColor];
//        self.SecondColor = [UIColor clearColor];
//
//    }
//    return self;
//}

- (void)gradientLayer:(UIView *)view {
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = view.bounds;
    gradient.startPoint = CGPointZero;
    gradient.endPoint = CGPointMake(1, 1);
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:34.0/255.0 green:211/255.0 blue:198/255.0 alpha:1.0] CGColor],(id)[[UIColor colorWithRed:145/255.0 green:72.0/255.0 blue:203/255.0 alpha:1.0] CGColor], nil];
    
    
    [view.layer insertSublayer:gradient atIndex:0];
}




@end
