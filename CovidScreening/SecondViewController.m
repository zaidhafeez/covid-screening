//
//  SecondViewController.m
//  CovidScreening
//
//  Created by Subhi Quraishi on 03/08/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import "SecondViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize nextView, QuestionLabel,nextButton, nextIndex,Submit;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    GradientView *gv = [[GradientView alloc] init];

    nextIndex = 0;
    [gv gradientLayer:nextView];
    
    
}

-(void)changeQuestion:(int)nextIndex {
    
    ScreeningQA *sQA = [[ScreeningQA alloc] init];
    
//    NSLog(@"nextIndex %d", nextIndex);
    NSLog(@"Array size %lu", (unsigned long)[sQA.answers count]);
    
    long length = (unsigned long)[sQA.questionArray count];
    
//
//
    if(nextIndex < [sQA.questionArray count]){
        
        if (nextIndex ==  length - 1) {
            [Submit setHidden:NO];
            [nextButton setHidden:YES];
        }
        
        NSLog(@"next index: %d", nextIndex);
//        for(int i = 0 ; i < [sQA.answers[nextIndex] count]; i++){
//            NSLog(@"value: %d, %lu",i,  (unsigned long)[sQA.answers[nextIndex] count]);
//            NSLog(@"answer option: %@", sQA.answers[nextIndex][i]);
////            QuestionLabel.text = sQA.answers[nextIndex][i];
////            [QuestionLabel sizeToFit];
//
//        }
        QuestionLabel.text = sQA.questionArray[nextIndex];
            [QuestionLabel sizeToFit];
    }
        
    
    
}

- (void)changeAnswer{
    
}

- (IBAction)nextButtonClicked:(UIButton *)sender {
//    QuestionLabel.backgroundColor = [UIColor clearColor];
    [self changeQuestion:nextIndex];
    nextIndex++;
//    [nextView addSubview:_answerTable];
    [_answerTable reloadData];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSLog(@"Table view cell loaded %d",nextIndex);
    
    ScreeningQA *sQA = [[ScreeningQA alloc] init];
    
    static NSString *cellId = @"SimpleTableId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        
    }
    
    if(nextIndex >= 1){
    
        NSArray *tempArray = sQA.answers[nextIndex - 1];
        cell.textLabel.text = [tempArray objectAtIndex:[indexPath row]];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.numberOfLines = 0;
        cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        
    }
    return cell;
    
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    ScreeningQA *sQA = [[ScreeningQA alloc] init];
    NSLog(@"cellfor1 %d", nextIndex);
    if (nextIndex >= 1) {
        return [sQA.answers[nextIndex - 1] count];
    }
    return 0;
}


@end
