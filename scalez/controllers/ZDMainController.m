//
//  ZDMainController.m
//  scalez
//
//  Created by Jorge Moura on 05/06/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDMainController.h"
#import "ZDScale.h"

@interface ZDMainController ()

@property (nonatomic, strong) ZDScale *theScale;

@property (nonatomic, weak) IBOutlet UIBarButtonItem* revealButtonItem;
@property (nonatomic, weak) IBOutlet UIBarButtonItem* changeScaleButtonItem;

@end




@implementation ZDMainController


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Constructor
//---------------------------------------------------------------------------------------
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - ViewController Lifecycle
//---------------------------------------------------------------------------------------
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    [[self revealButtonItem] setTarget: [self revealViewController]];
    [[self revealButtonItem] setAction: @selector( revealToggle: )];
    [[[self navigationController] navigationBar] addGestureRecognizer: [[self revealViewController] panGestureRecognizer]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Target/Action
//---------------------------------------------------------------------------------------
- (IBAction)openChangeScaleView:(id)sender {
    
    NSLog(@"Sender: %@", [sender description]);
    
    [self performSegueWithIdentifier:@"zd_scale_selector" sender:self];
}



//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Segue Navigation
//---------------------------------------------------------------------------------------
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
    if ([segue.identifier isEqualToString:@"zd_scale_selector"]) {
        
        NSLog(@"Segue: %@", [segue description]);
        NSLog(@"Sender: %@", [sender description]);
        
		UIViewController *xController = segue.destinationViewController;
		//PlayerDetailsViewController *playerDetailsViewController = [[navigationController viewControllers] objectAtIndex:0];
		//playerDetailsViewController.delegate = self;
	}
    
    
}


- (IBAction)unwindToMainView:(UIStoryboardSegue *)unwindSegue {
    
    UIViewController* sourceViewController = [unwindSegue sourceViewController];
    NSLog(@"Coming from %@", [sourceViewController description]);
    
    /*
     if ([sourceViewController isKindOfClass:[zD class]])
     {
     NSLog(@"Coming from BLUE!");
     }
     */
    
    
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
