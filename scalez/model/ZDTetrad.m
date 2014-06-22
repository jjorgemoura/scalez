//
//  ZDTetrad.m
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDTetrad.h"
#import "ZDTetradType.h"



@implementation ZDTetrad




//---------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------
#pragma mark - Class Methods




//---------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------
#pragma mark - Contructor Methods
- (instancetype)initWithRootNote:(ZDNote *)root thirdNote:(ZDNote *)third fifthNote:(ZDNote *)fifth andSeventhNote:(ZDNote *)seventh {
    
    self = [super init];
    if (self) {
        _rootNote = root;
        _thirdNote = third;
        _fifthNote = fifth;
        _seventhNote = seventh;
    }
    return self;
}




//---------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------
#pragma mark - Interfaces





//---------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------
#pragma mark - Public Methods
- (void)processChord {
    
    ZDTetradType *theType = [ZDTetradType buildWithNote:[[self rootNote] musicNote] note:[[self thirdNote] musicNote] note:[[self fifthNote] musicNote] andNote:[[self seventhNote] musicNote]];
    
    if(theType) {
        
        _tetradType = theType;
    }
}

- (NSString *)toString {

    NSString *result;
    
    result = [[[self rootNote] description] stringByAppendingString:[[self tetradType] chordType]];
    
    return result;
}


//---------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------
#pragma mark - Private Methods






@end
