//
//  ZDScaleSelectorController.h
//  scalez
//
//  Created by Jorge Moura on 05/06/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZDNote;
@class ZDScaleType;


@interface ZDScaleSelectorController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong) ZDNote *initialNote;
@property (nonatomic, strong) ZDScaleType *initialScaleType;

@end
