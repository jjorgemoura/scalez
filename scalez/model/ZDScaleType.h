//
//  ZDScaleType.h
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ZDScaleType : NSObject


@property (nonatomic, readonly) NSNumber *scaleID;
@property (nonatomic, readonly, copy) NSString *type;
@property (nonatomic, readonly, copy) NSDictionary *intervals;


+ (NSArray *)list;
+ (ZDScaleType *)scaleFromType:(NSString *)type;
+ (NSDictionary *)bigList;


- (instancetype)initWithID:(NSNumber *)scaleID type:(NSString *)type andIntervals:(NSDictionary *)intervals;

- (NSInteger)scaleNotesQuantity;

@end
