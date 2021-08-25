//
//  Registeration+CoreDataProperties.m
//  CovidScreening
//
//  Created by Subhi Quraishi on 25/08/21.
//  Copyright © 2021 Subhi Quraishi. All rights reserved.
//
//

#import "Registeration+CoreDataProperties.h"

@implementation Registeration (CoreDataProperties)

+ (NSFetchRequest<Registeration *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Registeration"];
}

@dynamic name;
@dynamic password;
@dynamic mobileNumber;
@dynamic gender;
@dynamic country;
@dynamic state;
@dynamic district;

@end
