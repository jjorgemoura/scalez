//
//  ZDScaleCollectionHeadView.m
//  scalez
//
//  Created by Jorge Moura on 15/06/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDScaleCollectionHeadView.h"


@interface ZDScaleCollectionHeadView ()

@property(weak) IBOutlet UILabel *headerLabel;
@end


@implementation ZDScaleCollectionHeadView

//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Constructor
//---------------------------------------------------------------------------------------
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [[self headerLabel] setText:@" "];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Public Methods
//---------------------------------------------------------------------------------------
- (void)header:(NSString *)text {

    [[self headerLabel] setText:text];
}


@end
