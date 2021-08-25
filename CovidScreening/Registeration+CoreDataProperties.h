//
//  Registeration+CoreDataProperties.h
//  CovidScreening
//
//  Created by Subhi Quraishi on 25/08/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//
//

#import "Registeration+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Registeration (CoreDataProperties)

+ (NSFetchRequest<Registeration *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *password;
@property (nullable, nonatomic, copy) NSString *mobileNumber;
@property (nullable, nonatomic, copy) NSString *gender;
@property (nullable, nonatomic, copy) NSString *country;
@property (nullable, nonatomic, copy) NSString *state;
@property (nullable, nonatomic, copy) NSString *district;

@end

NS_ASSUME_NONNULL_END
