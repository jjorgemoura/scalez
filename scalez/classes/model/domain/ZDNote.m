//
//  ZDNote.m
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDNote.h"


@implementation ZDNote



#pragma mark - Class Methods
+ (ZDNote *)noteWithHalfSteps:(NSInteger)halfsteps fromNote:(ZDNote *)note {

    ZDMusicNote x = [note note] + halfsteps;

    ZDNote *returnNote = [[ZDNote alloc] initWithNote:x];

    return returnNote;
}



#pragma mark - Constructor
- (instancetype)initWithNote:(ZDMusicNote)note {

    self = [super init];
    if (self) {
        
        _note = note;
    }
    return self;

}



@end
