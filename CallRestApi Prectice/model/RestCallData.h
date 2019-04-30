//
//  RestCallData.h
//  CallRestApi Prectice
//
//  Created by Shalitha Senanayaka on 2019-04-28.
//  Copyright © 2019 Shalitha Senanayaka. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RestCallData : NSObject

@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *city;
@property(strong, nonatomic) NSString *street;
@property(strong, nonatomic) NSString *postal_code;
@property(strong, nonatomic) NSString *country;
@property(strong, nonatomic) NSString *phone;
@property(strong, nonatomic) NSString *address;

@end

NS_ASSUME_NONNULL_END
