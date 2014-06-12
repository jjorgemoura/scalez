//
//  ZDAppDelegate.m
//  scalez
//
//  Created by Jorge Moura on 11/05/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDAppDelegate.h"


@interface ZDAppDelegate()
//<SWRevealViewControllerDelegate>

//Private methods
//- (NSString*)stringFromFrontViewPosition:(FrontViewPosition)position;

@end



@implementation ZDAppDelegate

//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - UIApplicationDelegate implementation Methods
//---------------------------------------------------------------------------------------
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    
    // Override point for customization after application launch.
    
    /* TO REMOVE
    ZDScaleType *scaleType = [[ZDScaleType list] objectAtIndex:0];
    ZDNote *note = [[ZDNote alloc] initWithNote:1];
    
    ZDScale *x = [[ZDScale alloc] init];
    [x setZdNote:note];
    [x setZdScaleType:scaleType];
    [x processScale];
    */
    
    
    
    //View Controllers
    /*
    ZDMainController *mainViewController = [[ZDMainController alloc] initWithCollectionViewLayout:nil];
	ZDMenuController *menuViewController = [[ZDMenuController alloc] init];
    
    
	UINavigationController *frontNavigationController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    UINavigationController *menuNavigationController = [[UINavigationController alloc] initWithRootViewController:menuNavigationController];
    
    
    
    //Skeleton View Controller
    SWRevealViewController *revealViewController = [[SWRevealViewController alloc] initWithRearViewController:menuNavigationController frontViewController:frontNavigationController];
    [revealViewController setDelegate:self];
    
    [self setSkeletonController:revealViewController];
    [[self window] setRootViewController:[self skeletonController]];
    */
    
    
    
    
    //Back to Apple
    //self.window.backgroundColor = [UIColor whiteColor];
    //[self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



/*
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - SERevealViewController Delegate
//---------------------------------------------------------------------------------------
- (void)revealController:(SWRevealViewController *)revealController willMoveToPosition:(FrontViewPosition)position {
    NSLog( @"%@: %@", NSStringFromSelector(_cmd), [self stringFromFrontViewPosition:position]);
}

- (void)revealController:(SWRevealViewController *)revealController didMoveToPosition:(FrontViewPosition)position {
    NSLog( @"%@: %@", NSStringFromSelector(_cmd), [self stringFromFrontViewPosition:position]);
}

- (void)revealController:(SWRevealViewController *)revealController animateToPosition:(FrontViewPosition)position {
    NSLog( @"%@: %@", NSStringFromSelector(_cmd), [self stringFromFrontViewPosition:position]);
}

- (void)revealControllerPanGestureBegan:(SWRevealViewController *)revealController {
    NSLog( @"%@", NSStringFromSelector(_cmd) );
}

- (void)revealControllerPanGestureEnded:(SWRevealViewController *)revealController {
    NSLog( @"%@", NSStringFromSelector(_cmd) );
}

- (void)revealController:(SWRevealViewController *)revealController panGestureBeganFromLocation:(CGFloat)location progress:(CGFloat)progress {
    NSLog( @"%@: %f, %f", NSStringFromSelector(_cmd), location, progress);
}

- (void)revealController:(SWRevealViewController *)revealController panGestureMovedToLocation:(CGFloat)location progress:(CGFloat)progress {
    NSLog( @"%@: %f, %f", NSStringFromSelector(_cmd), location, progress);
}

- (void)revealController:(SWRevealViewController *)revealController panGestureEndedToLocation:(CGFloat)location progress:(CGFloat)progress {
    NSLog( @"%@: %f, %f", NSStringFromSelector(_cmd), location, progress);
}



//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - PRIVATE
//---------------------------------------------------------------------------------------
- (NSString *)stringFromFrontViewPosition:(FrontViewPosition)position
{
    NSString *str = nil;
    
    if ( position == FrontViewPositionLeftSideMostRemoved ) str = @"FrontViewPositionLeftSideMostRemoved";
    if ( position == FrontViewPositionLeftSideMost) str = @"FrontViewPositionLeftSideMost";
    if ( position == FrontViewPositionLeftSide) str = @"FrontViewPositionLeftSide";
    if ( position == FrontViewPositionLeft ) str = @"FrontViewPositionLeft";
    if ( position == FrontViewPositionRight ) str = @"FrontViewPositionRight";
    if ( position == FrontViewPositionRightMost ) str = @"FrontViewPositionRightMost";
    if ( position == FrontViewPositionRightMostRemoved ) str = @"FrontViewPositionRightMostRemoved";
    
    return str;
}
*/


@end
