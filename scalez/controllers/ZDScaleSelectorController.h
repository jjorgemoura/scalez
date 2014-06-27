//
//  ZDScaleSelectorController.h
//  scalez
//
//  Created by Jorge Moura on 05/06/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZDScaleSelectorController;
@class ZDNote;
@class ZDScaleType;



@protocol ZDScaleSelectorControllerDelegate <NSObject>

@optional
- (void)viewController:(ZDScaleSelectorController *)viewController didSelectZDnote:(ZDNote *)note andZDScalteType:(ZDScaleType *)scaleType;

@end




@interface ZDScaleSelectorController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, weak) id <ZDScaleSelectorControllerDelegate> delegate;
@property (nonatomic, strong) ZDNote *theNote;
@property (nonatomic, strong) ZDScaleType *theScaleType;

@end
