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
    
    NSDictionary *si4 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:3], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:4], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                         nil];
    
    NSDictionary *si5 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:3], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:4],
                         nil];

    NSDictionary *si6 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:3], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:4], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:4], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:4],
                         nil];
    
    NSDictionary *si7 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:4], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:4], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:4],
                         nil];
    
    
    ZDTetradType *st1 = [[ZDTetradType alloc] initWithID:[NSNumber numberWithInt:1] type:@"MajorSeventh" andIntervals:si1];
    ZDTetradType *st2 = [[ZDTetradType alloc] initWithID:[NSNumber numberWithInt:2] type:@"MinorSeventh" andIntervals:si2];
    ZDTetradType *st3 = [[ZDTetradType alloc] initWithID:[NSNumber numberWithInt:3] type:@"DominantSeventh" andIntervals:si3];
    ZDTetradType *st4 = [[ZDTetradType alloc] initWithID:[NSNumber numberWithInt:4] type:@"HalfDiminishedSeventh" andIntervals:si4];
    ZDTetradType *st5 = [[ZDTetradType alloc] initWithID:[NSNumber numberWithInt:5] type:@"DiminishedSeventh" andIntervals:si5];
    ZDTetradType *st6 = [[ZDTetradType alloc] initWithID:[NSNumber numberWithInt:6] type:@"MinorMajorSeventh" andIntervals:si6];
    ZDTetradType *st7 = [[ZDTetradType alloc] initWithID:[NSNumber numberWithInt:7] type:@"AugmentedMajorSeventh" andIntervals:si7];
    
    NSArray *theArray = [[NSArray alloc] initWithObjects:st1, st2, st3, st4, st5, st6, st7, nil];
    
    return theArray;
}

+ (NSDictionary *)bigList {
    
    return nil;
}

+ (ZDTetradType *)buildWithNote:(ZDMusicNote)a note:(ZDMusicNote)b note:(ZDMusicNote)c andNote:(ZDMusicNote)d {
    
    ZDTetradType *result = nil;
    //NSLog(@"Chord Type for %i, %i, %i, %i", a, b, c, d);
    
    
    int firstToAnalyse = (b > a) ? b - a : b + 12 - a;
    int secondToAnalyse = (c > b) ? c - b : c + 12 - b;
    int thirdToAnalyse = (d > c) ? d - c : d + 12 - c;
    int fourthToAnalyse = (a > d) ? a -d : a + 12 - d;
    
    
    
    for (ZDTetradType *x in [ZDTetradType list]) {
        
        NSNumber *firstInterval = [[x intervals] objectForKey:[NSNumber numberWithInt:1]];
        NSNumber *secondInterval = [[x intervals] objectForKey:[NSNumber numberWithInt:2]];
        NSNumber *thirdInterval = [[x intervals] objectForKey:[NSNumber numberWithInt:3]];
        NSNumber *endInterval = [[x intervals] objectForKey:[NSNumber numberWithInt:4]];
        
        
        if ([firstInterval integerValue] == firstToAnalyse) {
            if ([secondInterval integerValue] == secondToAnalyse) {
                if ([thirdInterval integerValue] == thirdToAnalyse) {
                    if ([endInterval integerValue] == fourthToAnalyse) {
                        result = x;
                        break;
                    }
                }
            }
        }
    }
    
    
    return result;
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
