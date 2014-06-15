//
//  ZDScaleCollectionViewCell.m
//  scalez
//
//  Created by Jorge Moura on 15/06/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDScaleCollectionViewCell.h"


@interface ZDScaleCollectionViewCell ()

@property(weak) IBOutlet UILabel *mainLabel;
@end


@implementation ZDScaleCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [[self mainLabel] setText:@" "];
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



- (void)mainText:(NSString *)text {
    
    [[self mainLabel] setText:text];
}



@end
