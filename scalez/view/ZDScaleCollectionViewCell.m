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

//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Constructor
//---------------------------------------------------------------------------------------
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [[self mainLabel] setText:@" "];
        
        [[self layer] setCornerRadius:25];
    }
    return self;
}


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Lifecycle Delegate
//---------------------------------------------------------------------------------------
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [[self layer] setCornerRadius:45.0];
    
    //CGRect x = [[self layer] bounds];
    //CGRect y = [self bounds];
    
    
    
    UIColor *bColor = [UIColor colorWithRed:0.557 green:0.557 blue:0.576 alpha:1];
    //UIColor *bColor = [UIColor colorWithRed:1 green:0.584 blue:0 alpha:1];
    
    
    [[self layer] setBorderColor:[bColor CGColor]];
    [[self layer] setBorderWidth:3.0];
    
    
    
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
