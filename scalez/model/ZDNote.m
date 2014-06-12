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
+ (NSArray *)list {
    
    
    ZDNote *nt1 = [[ZDNote alloc] initWithNote:C];
    ZDNote *nt2 = [[ZDNote alloc] initWithNote:CSharp];
    ZDNote *nt3 = [[ZDNote alloc] initWithNote:D];
    ZDNote *nt4 = [[ZDNote alloc] initWithNote:DSharp];
    ZDNote *nt5 = [[ZDNote alloc] initWithNote:E];
    ZDNote *nt6 = [[ZDNote alloc] initWithNote:F];
    ZDNote *nt7 = [[ZDNote alloc] initWithNote:FSharp];
    ZDNote *nt8 = [[ZDNote alloc] initWithNote:G];
    ZDNote *nt9 = [[ZDNote alloc] initWithNote:GSharp];
    ZDNote *nt10 = [[ZDNote alloc] initWithNote:A];
    ZDNote *nt11 = [[ZDNote alloc] initWithNote:ASharp];
    ZDNote *nt12 = [[ZDNote alloc] initWithNote:B];
    
    NSArray *theArray = [[NSArray alloc] initWithObjects:[nt1 description],
                         [nt2 description],
                         [nt3 description],
                         [nt4 description],
                         [nt5 description],
                         [nt6 description],
                         [nt7 description],
                         [nt8 description],
                         [nt9 description],
                         [nt10 description],
                         [nt11 description],
                         [nt12 description],
                         nil];
    
    return theArray;
}


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

- (NSString *)description
{
    NSString *description = nil;
    
    if([self note] == C) {
        description = @"C";
    }

    if([self note] == CSharp) {
        description = @"C#/Db";
    }
    
    if([self note] == D) {
        description = @"D";
    }
    
    if([self note] == DSharp) {
        description = @"D#/Eb";
    }
    
    if([self note] == E) {
        description = @"E";
    }
    
    if([self note] == F) {
        description = @"F";
    }
    
    if([self note] == FSharp) {
        description = @"F#/Gb";
    }
    
    if([self note] == G) {
        description = @"G";
    }
    
    if([self note] == GSharp) {
        description = @"G#/Ab";
    }
    
    if([self note] == A) {
        description = @"A";
    }
    
    if([self note] == ASharp) {
        description = @"A#/Bb";
    }
    
    if([self note] == B) {
        description = @"B";
    }
    
    
    return description;
}

@end
