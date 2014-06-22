//
//  ZDChord.h
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZDChordType;
@class ZDNote;


@interface ZDChord : NSObject

@property (nonatomic, strong, readonly) ZDNote *rootNote;
@property (nonatomic, strong, readonly) ZDNote *thirdNote;
@property (nonatomic, strong, readonly) ZDNote *fifthNote;
@property (nonatomic, strong, readonly) ZDChordType *chordType;

- (instancetype)initWithRootNote:(ZDNote *)root thirdNote:(ZDNote *)third andFifthNote:(ZDNote *)fifth;

- (void)processChord;
- (NSString *)toString;
@end
