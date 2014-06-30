//
//  ZDScaleCollectionShorterViewCell.m
//  scalez
//
//  Created by Jorge Moura on 30/06/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDScaleCollectionShorterViewCell.h"

@interface ZDScaleCollectionShorterViewCell ()

@property(weak) IBOutlet UILabel *mainLabel;
@end


@implementation ZDScaleCollectionShorterViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [[self layer] setCornerRadius:20.0];
    
    //CGRect x = [[self layer] bounds];
    //CGRect y = [self bounds];
    
    
    
    UIColor *bColor = [UIColor colorWithRed:0.557 green:0.557 blue:0.576 alpha:1];
    //UIColor *bColor = [UIColor colorWithRed:1 green:0.584 blue:0 alpha:1];
    
    
    [[self layer] setBorderColor:[bColor CGColor]];
    [[self layer] setBorderWidth:1.5];
    
    
    
    //    [[self layer] setShadowOffset:CGSizeMake(0, 5)];
    //    [[self layer] setShadowRadius:3.0];
    //    [[self layer] setShadowColor:[UIColor redColor].CGColor] ;
    //    [[self layer] setShadowOpacity:0.5];
    //    [[self layer] setShadowPath:[[UIBezierPath bezierPathWithRect:[self bounds]] CGPath]];
}




- (void)mainText:(NSString *)text {
    
    [[self mainLabel] setText:text];
}

@end
