//
//  WebService.h
//  CovidScreening
//
//  Created by Subhi Quraishi on 19/08/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WebService : NSObject

+(void)executeQuery:(NSString *)url premeter:(NSMutableArray *)premeter1 withblock:(void(^)(NSData *, NSError*))block;

@end

NS_ASSUME_NONNULL_END
