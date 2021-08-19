//
//  WebService.m
//  CovidScreening
//
//  Created by Subhi Quraishi on 19/08/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import "WebService.h"

@implementation WebService
+(void)executeQuery:(NSString *)URL premeter:(NSString *)premeter1 withblock:(void (^)(NSData * _Nonnull, NSError * _Nonnull))block
{
    
    NSURLSessionConfiguration *defaultConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:defaultConfiguration delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
    
    NSURL *requestURL = [NSURL URLWithString:URL];
    NSMutableURLRequest *mutableRequest = [NSMutableURLRequest requestWithURL:requestURL];
    
    //NSString *pram = premeter1;
    
    [mutableRequest setHTTPMethod:@"POST"];
    [mutableRequest setHTTPBody:[premeter1 dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSURLSessionDataTask *task = [session dataTaskWithRequest:mutableRequest completionHandler: ^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSLog(@"respnseurl %@", response);
        if([data length]>0){
             NSLog(@"Yes, i am running bro");
        }
        if(data != nil){
            block(data, error);
            NSLog(@"Yes, i am running bro");
        }
        else{
            block(data, error);
        }
        
    }];
    
    [task resume];
    
}

@end
