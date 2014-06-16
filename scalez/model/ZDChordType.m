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

    NSDictionary *si1 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:4], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:5], [NSNumber numberWithInt:3],
                         nil];
    
    NSDictionary *si2 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:3], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:4], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:5], [NSNumber numberWithInt:3],
                         nil];
    
    NSDictionary *si3 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:4], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:4], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:4], [NSNumber numberWithInt:3],
                         nil];
    
    NSDictionary *si4 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:3], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:6], [NSNumber numberWithInt:3],
                         nil];
    
    
    
    
    ZDChordType *st1 = [[ZDChordType alloc] initWithID:[NSNumber numberWithInt:1] type:@"Major" andIntervals:si1];
    ZDChordType *st2 = [[ZDChordType alloc] initWithID:[NSNumber numberWithInt:2] type:@"Minor" andIntervals:si2];
    ZDChordType *st3 = [[ZDChordType alloc] initWithID:[NSNumber numberWithInt:3] type:@"Augmented" andIntervals:si3];
    ZDChordType *st4 = [[ZDChordType alloc] initWithID:[NSNumber numberWithInt:4] type:@"Diminiush" andIntervals:si4];
//    ZDScaleType *st5 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:5] type:@"SevenDominant" andIntervals:si5];
//    ZDScaleType *st6 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:6] type:@"Whole-Tone Scale" andIntervals:si6];
//    ZDScaleType *st7 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:7] type:@"Dorian" andIntervals:si7];
//    ZDScaleType *st8 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:8] type:@"Phrygian" andIntervals:si8];
//    ZDScaleType *st9 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:9] type:@"Lydian" andIntervals:si9];
//    ZDScaleType *st10 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:10] type:@"Mixolydian" andIntervals:si10];
//    ZDScaleType *st11 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:11] type:@"Aeolian" andIntervals:si11];
//    ZDScaleType *st12 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:12] type:@"Locrian" andIntervals:si12];
    
    
    
    
    //NSArray *theArray = [[NSArray alloc] initWithObjects:st1, st2, st3, st4, st5, st6, st7, st8, st9, st10, st11, st12, nil];
    NSArray *theArray = [[NSArray alloc] initWithObjects:st1, st2, st3, st4, nil];
    
    return theArray;
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
