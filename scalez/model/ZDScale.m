//
//  ZDScale.m
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDScale.h"

#import "ZDNote.h"
#import "ZDScaleType.h"
#import "ZDChord.h"
#import "ZDTetrad.h"
#import "ZDChordType.h"
#import "ZDTetradType.h"


@implementation ZDScale


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Public Methods
//---------------------------------------------------------------------------------------
- (void)processScale {

    //reset dics
    _notes = [[NSMutableArray alloc] initWithCapacity:[[[self zdScaleType] intervals] count]];
    _chords = [[NSMutableArray alloc] initWithCapacity:[[[self zdScaleType] intervals] count]];
    _tetrads = [[NSMutableArray alloc] initWithCapacity:[[[self zdScaleType] intervals] count]];
    
    
    NSMutableDictionary *notesDic = [[NSMutableDictionary alloc] initWithCapacity:[[[self zdScaleType] intervals] count]];
    
    
    
    //initial notes
    //[_notes setObject:[self zdNote] forKey:[NSNumber numberWithInt:1]];
    //[_notes addObject:[self zdNote]];
    
    
    
    //now, other notes to this scale
    int i = 1;
    ZDNote *nextNote = [self zdNote];
    
    for (int j = 1; j <= [[[self zdScaleType] intervals] count]; j++) {
        
        //[_notes setObject:nextNote forKey:[NSNumber numberWithInt:i]];
        [_notes addObject:nextNote];
        [notesDic setObject:nextNote forKey:[NSNumber numberWithInt:i]];
        
        
        NSNumber *scaleNoteIntervalValue = [[[self zdScaleType] intervals] objectForKey:[NSNumber numberWithInt:j]];
        
        nextNote = [ZDNote noteWithHalfSteps:[scaleNoteIntervalValue intValue] fromNote:nextNote];
        i++;
    }
    
    
    
    
    
    
    //generate chords
    ZDChord *theChord = nil;
    
    for (int j = 1; j <= [_notes count] ; j++) {
        
        int rootDegree = j;
        int thirdDegree = j + 2;
        int fifthDegree = j + 4;
        
        if (thirdDegree > [_notes count]) {
            thirdDegree = thirdDegree - [_notes count];
        }
        
        if (fifthDegree > [_notes count]) {
            fifthDegree = fifthDegree - [_notes count];
        }
        
        
        //theChord = [[ZDChord alloc] initWithRootNote:[_notes objectForKey:[NSNumber numberWithInt:rootDegree]] thirdNote:[_notes objectForKey:[NSNumber numberWithInt:thirdDegree]] andFifthNote:[_notes objectForKey:[NSNumber numberWithInt:fifthDegree]]];
        //[_chords setObject:theChord forKey:[NSNumber numberWithInt:j]];
        
        
        theChord = [[ZDChord alloc] initWithRootNote:[notesDic objectForKey:[NSNumber numberWithInt:rootDegree]] thirdNote:[notesDic objectForKey:[NSNumber numberWithInt:thirdDegree]] andFifthNote:[notesDic objectForKey:[NSNumber numberWithInt:fifthDegree]]];
        
        [_chords addObject:theChord];
    }
    
    
    
    
    //generate tetrad chords
    ZDTetrad *theTetradChord = nil;
    
    for (int j = 1; j <= [_notes count] ; j++) {
        
        int rootDegree = j;
        int thirdDegree = j + 2;
        int fifthDegree = j + 4;
        int seventhDegree = j + 6;
        
        if (thirdDegree > [_notes count]) {
            thirdDegree = thirdDegree - [_notes count];
        }
        
        if (fifthDegree > [_notes count]) {
            fifthDegree = fifthDegree - [_notes count];
        }
        
        if (seventhDegree > [_notes count]) {
            seventhDegree = seventhDegree - [_notes count];
        }
        
        
        //theTetradChord = [[ZDTetrad alloc] initWithRootNote:[_notes objectForKey:[NSNumber numberWithInt:rootDegree]] thirdNote:[_notes objectForKey:[NSNumber numberWithInt:thirdDegree]] fifthNote:[_notes objectForKey:[NSNumber numberWithInt:fifthDegree]] andSeventhNote:[_notes objectForKey:[NSNumber numberWithInt:seventhDegree]]];
        
        
        //[_tetrads setObject:theTetradChord forKey:[NSNumber numberWithInt:j]];
        
        
        theTetradChord = [[ZDTetrad alloc] initWithRootNote:[notesDic objectForKey:[NSNumber numberWithInt:rootDegree]] thirdNote:[notesDic objectForKey:[NSNumber numberWithInt:thirdDegree]] fifthNote:[notesDic objectForKey:[NSNumber numberWithInt:fifthDegree]] andSeventhNote:[notesDic objectForKey:[NSNumber numberWithInt:seventhDegree]]];
        
        [_tetrads addObject:theTetradChord];
    }
    
    
    
    

    //NSLog(@"LOG1: %zu", (unsigned long)[_notes count]);
}

- (NSArray *)scaleNotes {
    
    //return [_notes allValues];
    return [_notes copy];
}

- (NSArray *)scaleChords {

    return [_chords copy];
}

- (NSArray *)scaleTetrads {
    
    return [_tetrads copy];
}



@end
