//
//  ZDChordType.m
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDChordType.h"

@implementation ZDChordType


#pragma mark - Class Methods
+ (NSArray *)list {

    return nil;
}

+ (NSDictionary *)bigList {
    
    return nil;
}

+ (ZDChordType *)buildWithNote:(ZDMusicNote)a note:(ZDMusicNote)b andNote:(ZDMusicNote)c {
    
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

    return 3;
}





@end
