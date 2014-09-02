//
//  ZDMenuController.m
//  scalez
//
//  Created by Jorge Moura on 05/06/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDMenuController.h"
#import "ZDSettingsController.h"
#import "ZDAboutController.h"

@interface ZDMenuController ()

@end

@implementation ZDMenuController


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Constructor
//---------------------------------------------------------------------------------------
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Lifecycle
//---------------------------------------------------------------------------------------
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    [self setTitle:@"Scalez"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Table view data source
//---------------------------------------------------------------------------------------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"no_Cell";
    
    switch (indexPath.row)
    {
        case 0:
            cellIdentifier = @"MY_MENUSCALE_CELL";
            break;
            
        case 1:
            cellIdentifier = @"MY_MENUSETTINGS_CELL";
            break;
            
        case 2:
            cellIdentifier = @"MY_MENUABOUT_CELL";
            break;
    }
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Navigation
//---------------------------------------------------------------------------------------

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    //NSLog(@"%@", [segue identifier]);
    
    
//    if ( [segue.destinationViewController isKindOfClass: [ZDSettingsController class]] && [sender isKindOfClass:[UITableViewCell class]] )
//    {
//        ZDSettingsController* cvc = segue.destinationViewController;
//        //NSLog(@"%@", [cvc description]);
//    }
//    
//    if ( [segue.destinationViewController isKindOfClass: [ZDAboutController class]] && [sender isKindOfClass:[UITableViewCell class]] )
//    {
//        ZDAboutController* cvc = segue.destinationViewController;
//        //NSLog(@"%@", [cvc description]);
//    }
//    
//    if([[segue identifier] isEqualToString:@"menu_main"]) {
//        UIViewController* cvc = segue.destinationViewController;
//        //NSLog(@"%@", [cvc description]);
//    }
    
    
    
    // configure the segue.
    if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]] )
    {
        SWRevealViewControllerSegue* rvcs = (SWRevealViewControllerSegue*) segue;
        SWRevealViewController* rvc = [self revealViewController];

        
        rvcs.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc)
        {
            UINavigationController* nc = [[UINavigationController alloc] initWithRootViewController:dvc];
            [rvc pushFrontViewController:nc animated:YES];
        };
    }
}


@end
