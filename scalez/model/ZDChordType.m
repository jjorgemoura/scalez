//
//  ZDChordType.m
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDChordType.h"

@implementation ZDChordType

@synthesize chordType = _chordType;


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Class Methods
//---------------------------------------------------------------------------------------
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
    
    
    NSArray *theArray = [[NSArray alloc] initWithObjects:st1, st2, st3, st4, nil];
    
    return theArray;
}

+ (NSDictionary *)bigList {
    
    return nil;
}

+ (ZDChordType *)buildWithNote:(ZDMusicNote)a note:(ZDMusicNote)b andNote:(ZDMusicNote)c {
    
    ZDChordType *result = nil;
    //NSLog(@"Chord Type for %i, %i, %i", a, b, c);
    
    
    
    int firstToAnalyse = (b > a) ? b - a : b + 12 - a;
    int secondToAnalyse = (c > b) ? c - b : c + 12 - b;
    int thirdToAnalyse = (a > c) ? a - c : a + 12 - c;
    
    
    for (ZDChordType *x in [ZDChordType list]) {
        
        NSNumber *firstInterval = [[x intervals] objectForKey:[NSNumber numberWithInt:1]];
        NSNumber *secondInterval = [[x intervals] objectForKey:[NSNumber numberWithInt:2]];
        NSNumber *endInterval = [[x intervals] objectForKey:[NSNumber numberWithInt:3]];
        
        
        if ([firstInterval integerValue] == firstToAnalyse) {
            if ([secondInterval integerValue] == secondToAnalyse) {
                if ([endInterval integerValue] == thirdToAnalyse) {
                    result = x;
                    break;
                }
            }
        }
    }
    
    
    
    return result;
}


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Constructor
//---------------------------------------------------------------------------------------
- (instancetype)initWithID:(NSNumber *)chordID type:(NSString *)type andIntervals:(NSDictionary *)intervals {

    self = [super init];
    if (self) {
        _chordID = chordID;
        _chordType = [type copy];
        _intervals = [intervals copy];
    }
    return self;
}



//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Public Methods
//---------------------------------------------------------------------------------------
- (NSInteger)chordNotesQuantity {

    return 3;
}



//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Getter
//---------------------------------------------------------------------------------------
- (NSString *)chordType {

    NSString *result;
    
    
    if([_chordType isEqualToString:@"Major"]) {
        result = @"";
    }
    
    if([_chordType isEqualToString:@"Minor"]) {
        result = @"m";
    }
    
    if([_chordType isEqualToString:@"Augmented"]) {
        result = @"+";
    }
    
    if([_chordType isEqualToString:@"Diminiush"]) {
        result = @"dim";
    }
    
    return result;
}

@end
