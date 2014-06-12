//
//  ZDTetradType.h
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ZDNote.h"


@interface ZDTetradType : NSObject

@property (nonatomic, readonly) NSNumber *chordID;
@property (nonatomic, readonly, copy) NSString *chordType;
@property (nonatomic, readonly, copy) NSDictionary *intervals;


+ (NSArray *)list;
+ (NSDictionary *)bigList;
+ (ZDTetradType *)buildWithNote:(ZDMusicNote)a note:(ZDMusicNote)b note:(ZDMusicNote)c andNote:(ZDMusicNote)d;


- (instancetype)initWithID:(NSNumber *)chordID type:(NSString *)type andIntervals:(NSDictionary *)intervals;


- (NSInteger)chordNotesQuantity;



@end
