//
//  WebService.m
//  CovidScreening
//
//  Created by Subhi Quraishi on 19/08/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import "WebService.h"

@implementation WebService
+(void)executeQuery:(NSString *)URL premeter:(NSMutableArray *)premeter1 withblock:(void (^)(NSData * _Nonnull, NSError * _Nonnull))block
{
    
    NSURLSessionConfiguration *defaultConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:defaultConfiguration delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
    
    NSURL *requestURL = [NSURL URLWithString:URL];
    NSMutableURLRequest *mutableRequest = [NSMutableURLRequest requestWithURL:requestURL];
    
    //NSString *pram = premeter1;
    NSData *jsondta = [NSJSONSerialization dataWithJSONObject:premeter1 options:kNilOptions error:nil];
    [mutableRequest setHTTPMethod:@"POST"];
    [mutableRequest setHTTPBody:jsondta];
    
    NSURLSessionDataTask *task = [session dataTaskWithRequest:mutableRequest completionHandler: ^(NSData *data, NSURLResponse *response, NSError *error) {
    
//        NSLog(@"respnseurl %@", response);
        
        if(data != nil){
            block(data, error);
            NSLog(@"I am running after response data %@", block);
        }
        else{
            block(data, error);
            NSLog(@"And i am not running");
        }
        
    }];
    
    [task resume];
    
}

@end
