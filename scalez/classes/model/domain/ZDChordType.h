//
//  ZDChordType.h
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ZDNote.h"

@interface ZDChordType : NSObject


@property (nonatomic, readonly) NSNumber *chordID;
@property (nonatomic, readonly, copy) NSString *chordType;
@property (nonatomic, readonly, copy) NSDictionary *intervals;


+ (NSArray *)list;
+ (NSDictionary *)bigList;
+ (ZDChordType *)buildWithNote:(ZDMusicNote)a note:(ZDMusicNote)b andNote:(ZDMusicNote)c;


- (instancetype)initWithID:(NSNumber *)chordID type:(NSString *)type andIntervals:(NSDictionary *)intervals;


- (NSInteger)chordNotesQuantity;



@end
