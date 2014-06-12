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


@implementation ZDScale



#pragma mark - Constructor



#pragma mark - Public Methods
- (void)processScale {

    //reset dics
    _notes = [[NSMutableDictionary alloc] init];
    _chords = [[NSMutableDictionary alloc] init];
    _tetrads = [[NSMutableDictionary alloc] init];
    
    
    
    //initial notes
    [_notes setObject:[self zdNote] forKey:[NSNumber numberWithInt:1]];
    
    
    
    //now, other notes to this scale
    int i = 1;
    ZDNote *nextNote = [self zdNote];
    
    for (int j = 1; j <= [[[self zdScaleType] intervals] count]; j++) {
        
        NSNumber *scaleNoteIntervalValue = [[[self zdScaleType] intervals] objectForKey:[NSNumber numberWithInt:j]];
        
        [_notes setObject:nextNote forKey:[NSNumber numberWithInt:i]];
        
        
        nextNote = [ZDNote noteWithHalfSteps:[scaleNoteIntervalValue intValue] fromNote:nextNote];
        i++;
    }
    
    
    
    //generate chords
    
    
    
    
    
    
    

    NSLog(@"LOG1: %zu", (unsigned long)[_notes count]);
}

- (NSArray *)scaleNotes {
 
    return [_notes allValues];
}

- (NSArray *)scaleChords {

    return [_chords allValues];
}

- (NSArray *)scaleTetrads {
    
    return [_tetrads allValues];
}



@end
