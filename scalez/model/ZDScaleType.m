//
//  ZDScaleType.m
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDScaleType.h"

@implementation ZDScaleType


#pragma mark - Class Methods
+ (NSArray *)list {
    
    NSDictionary *si1 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:2], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:5],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:6],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:7],
                         nil];

    NSDictionary *si2 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:2], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:5],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:6],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:7],
                         nil];
    
    NSDictionary *si3 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:2], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:5],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:6],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:7],
                         nil];
    
    NSDictionary *si4 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:2], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:5],
                         nil];
    
    NSDictionary *si5 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:3], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:3], [NSNumber numberWithInt:4],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:5],
                         nil];
    
    NSDictionary *si6 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:2], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:5],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:6],
                         nil];
    
    NSDictionary *si7 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:2], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:5],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:6],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:7],
                         nil];
    
    NSDictionary *si8 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:1], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:5],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:6],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:7],
                         nil];
    
    NSDictionary *si9 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:2], [NSNumber numberWithInt:1],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:2],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:3],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:4],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:5],
                         [NSNumber numberWithInt:2], [NSNumber numberWithInt:6],
                         [NSNumber numberWithInt:1], [NSNumber numberWithInt:7],
                         nil];
    
    NSDictionary *si10 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:2], [NSNumber numberWithInt:1],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:2],
                          [NSNumber numberWithInt:1], [NSNumber numberWithInt:3],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:5],
                          [NSNumber numberWithInt:1], [NSNumber numberWithInt:6],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:7],
                          nil];
    
    NSDictionary *si11 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:2], [NSNumber numberWithInt:1],
                          [NSNumber numberWithInt:1], [NSNumber numberWithInt:2],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:3],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:4],
                          [NSNumber numberWithInt:1], [NSNumber numberWithInt:5],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:6],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:7],
                          nil];
    
    NSDictionary *si12 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:1], [NSNumber numberWithInt:1],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:2],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:3],
                          [NSNumber numberWithInt:1], [NSNumber numberWithInt:4],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:5],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:6],
                          [NSNumber numberWithInt:2], [NSNumber numberWithInt:7],
                          nil];
    

    ZDScaleType *st1 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:1] type:@"Major" andIntervals:si1];
    ZDScaleType *st2 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:2] type:@"Natural Minor" andIntervals:si2];
    ZDScaleType *st3 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:3] type:@"Harmonic Minor" andIntervals:si3];
    ZDScaleType *st4 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:4] type:@"Pentatonic Major" andIntervals:si4];
    ZDScaleType *st5 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:5] type:@"Pentatonic Minor" andIntervals:si5];
    ZDScaleType *st6 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:6] type:@"Whole-Tone Scale" andIntervals:si6];
    ZDScaleType *st7 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:7] type:@"Dorian" andIntervals:si7];
    ZDScaleType *st8 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:8] type:@"Phrygian" andIntervals:si8];
    ZDScaleType *st9 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:9] type:@"Lydian" andIntervals:si9];
    ZDScaleType *st10 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:10] type:@"Mixolydian" andIntervals:si10];
    ZDScaleType *st11 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:11] type:@"Aeolian" andIntervals:si11];
    ZDScaleType *st12 = [[ZDScaleType alloc] initWithID:[NSNumber numberWithInt:12] type:@"Locrian" andIntervals:si12];

    
    
    
    NSArray *theArray = [[NSArray alloc] initWithObjects:st1, st2, st3, st4, st5, st6, st7, st8, st9, st10, st11, st12, nil];

    return theArray;
}

+ (NSDictionary *)bigList {


    return nil;
}

+ (ZDScaleType *)scaleFromType:(NSString *)type {

    ZDScaleType *result;
    

    for (ZDScaleType *x in [ZDScaleType list]) {
        
        if([[x type] isEqualToString:type]) {
        
            result = x;
            break;
        }
    }
    
    
    return result;
}


#pragma mark - Constructor
- (instancetype)initWithID:(NSNumber *)scaleID type:(NSString *)type andIntervals:(NSDictionary *)intervals {

    self = [super init];
    if (self) {
        _scaleID = scaleID;
        _type = [type copy];
        _intervals = [intervals copy];
    }
    return self;
}



#pragma mark - Public Methods
- (NSInteger)scaleNotesQuantity {

    NSInteger result = 0;
    
    if([self intervals]) {
    
        result = [[self intervals] count];
    }
   
    return result;
}

@end
