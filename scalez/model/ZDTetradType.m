//
//  ZDTetradType.m
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDTetradType.h"

@implementation ZDTetradType



#pragma mark - Class Methods
+ (NSArray *)list {
    
    NSDictionary *si1 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:4], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:4], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:4],
                         nil];
    
    NSDictionary *si2 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:3], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:4], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                         nil];
    
    NSDictionary *si3 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:4], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                         nil];
    
  
    
    ZDTetradType *st1 = [[ZDTetradType alloc] initWithID:[NSNumber numberWithInt:1] type:@"SevenMajor" andIntervals:si1];
    ZDTetradType *st2 = [[ZDTetradType alloc] initWithID:[NSNumber numberWithInt:2] type:@"SevenMinor" andIntervals:si2];
    ZDTetradType *st3 = [[ZDTetradType alloc] initWithID:[NSNumber numberWithInt:3] type:@"Seven" andIntervals:si3];
    
    
    NSArray *theArray = [[NSArray alloc] initWithObjects:st1, st2, st3, nil];
    
    return theArray;
}

+ (NSDictionary *)bigList {
    
    return nil;
}

+ (ZDTetradType *)buildWithNote:(ZDMusicNote)a note:(ZDMusicNote)b note:(ZDMusicNote)c andNote:(ZDMusicNote)d {
    
    return nil;
}


#pragma mark - Constructor
- (instancetype)initWithID:(NSNumber *)chordID type:(NSString *)type andIntervals:(NSDictionary *)intervals {
    
    self = [super init];
    if (self) {
        _chordID = chordID;
        _chordType = [type copy];
        _intervals = [intervals copy];
    }
    return self;
}



#pragma mark - Public Methods
- (NSInteger)chordNotesQuantity {
    
    return 4;
}



@end
