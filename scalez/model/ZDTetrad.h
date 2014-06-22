//
//  ZDTetrad.h
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZDNote;
@class ZDTetradType;


@interface ZDTetrad : NSObject


@property (nonatomic, strong, readonly) ZDNote *rootNote;
@property (nonatomic, strong, readonly) ZDNote *thirdNote;
@property (nonatomic, strong, readonly) ZDNote *fifthNote;
@property (nonatomic, strong, readonly) ZDNote *seventhNote;
@property (nonatomic, strong, readonly) ZDTetradType *tetradType;

- (instancetype)initWithRootNote:(ZDNote *)root thirdNote:(ZDNote *)third fifthNote:(ZDNote *)fifth andSeventhNote:(ZDNote *)seventh;

- (void)processChord;



@end
