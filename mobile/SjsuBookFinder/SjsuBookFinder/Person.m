//
//  Person.m
//  SjsuBookFinder
//
//  Created by Ravin Sardal on 3/14/16.
//  Copyright © 2016 Ravin Sardal. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)init{
    return self;
}

-(instancetype)initWithFirstName:(NSString *)firstName withLastName:(NSString *)lastName withSjsuId:(NSString *)sjsuId withPassword:(NSString *)password{
    _firstName = firstName;
    _lastName = lastName;
    _sjsuID = sjsuId;
    _password = password;
    return self;
}

-(NSString *)stringify{
    NSString *result = [NSString stringWithFormat:@"%@,%@,%@,%@",self.firstName, self.lastName,self.sjsuID,self.password];
    return result;
}
+(Person *)unstringify:(NSString *)personString{
    Person *p = [[Person alloc]init];
    NSArray *strArray = [personString componentsSeparatedByString:@","];
    p.firstName = strArray[0];
    p.lastName = strArray[1];
    p.sjsuID = strArray[2];
    p.password = strArray[3];
    return p;
}

@end