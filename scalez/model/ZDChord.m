//
//  ZDChord.m
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDChord.h"
#import "ZDChordType.h"

@implementation ZDChord


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Constructor
//---------------------------------------------------------------------------------------
- (instancetype)initWithRootNote:(ZDNote *)root thirdNote:(ZDNote *)third andFifthNote:(ZDNote *)fifth {

    self = [super init];
    if (self) {
        _rootNote = root;
        _thirdNote = third;
        _fifthNote = fifth;
    }
    return self;
}



//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Public Methods
//---------------------------------------------------------------------------------------
- (void)processChord {

    ZDChordType *theType = [ZDChordType buildWithNote:[[self rootNote] musicNote] note:[[self thirdNote] musicNote] andNote:[[self fifthNote] musicNote]];
    
    if(theType) {
    
        _chordType = theType;
    }
}

- (NSString *)toString {
    
    NSString *result;
    
    if(![self chordType]) {
        [self processChord];
    }
    
    result = [[[self rootNote] description] stringByAppendingString:[[self chordType] chordType]];
    
    return result;
}





@end
