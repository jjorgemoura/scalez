//
//  ZDScale.h
//  scalez
//
//  Created by Jorge Moura on 12/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZDScaleType;
@class ZDNote;


@interface ZDScale : NSObject {

    NSMutableDictionary *_notes;
    NSMutableDictionary *_chords;
    NSMutableDictionary *_tetrads;
}


@property (nonatomic, strong) ZDScaleType *zdScaleType;
@property (nonatomic, strong) ZDNote *zdNote;


- (void)processScale;

- (NSArray *)scaleNotes;
- (NSArray *)scaleChords;
- (NSArray *)scaleTetrads;


@end
