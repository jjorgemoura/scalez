//
//  ZDMainController.m
//  scalez
//
//  Created by Jorge Moura on 05/06/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDMainController.h"
#import "ZDScale.h"
#import "ZDNote.h"
#import "ZDScaleType.h"
#import "ZDScaleCollectionHeadView.h"
#import "ZDScaleCollectionViewCell.h"

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
    
    
    //Prepare Default Scale
    [self setTheScale:[[ZDScale alloc] init]];
    [[self theScale] setZdNote:[[ZDNote alloc] initWithNote:C]];
    [[self theScale] setZdScaleType:[[ZDScaleType list] objectAtIndex:0]];
    [[self theScale] processScale];
    
    
    //
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
        
		//UIViewController *xController = segue.destinationViewController;
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


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - UICollectionView Delegate
//---------------------------------------------------------------------------------------


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - UICollectionViewDelegateFlowLayout Delegate
//---------------------------------------------------------------------------------------
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
//
//    CGSize sectionHeader = CGSizeMake(10, 10);
//    
//    return sectionHeader;
//}
//
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
//
//    CGSize theCell = CGSizeMake(90, 90);
//    
//    return theCell;
//}
//
//- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
//
//    UIEdgeInsets theEdges = UIEdgeInsetsMake(0.0, 25.0, 20.0, 15.0);
//    
//    return theEdges;
//}


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - UICollectionView Data Source
//---------------------------------------------------------------------------------------
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 3;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    NSInteger result = 1;
    
    if (section == 0) {

        if ([self theScale]) {
            
            result = [[[self theScale] scaleNotes] count];
        }
    }
    
    if(section == 1) {
    
        result = 5;
    }

    if(section == 2) {
        
        result = 12;
    }
    
    return result;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"MY_MAINCOLLECTION_HEADER";
    
    ZDScaleCollectionHeadView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    [headerView header:@"awefasdf"];

    return headerView;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    //NSLog(@"Collection view indexpath: %i", [indexPath row]);
    
    static NSString *cellIdentifier = @"MY_MAINCOLLECTION_CELL";

    
    ZDScaleCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //[cell mainText:[[[self theScale] scaleNotes] objectAtIndex:indexPath.row]];
    
    [cell mainText:@"Em"];
    
    
    //cell.imageView.image = [UIImage imageNamed:self.truckImages[0]];
    //UIImage *truckImage = [[UIImage alloc] init];
    //truckImage = [UIImage imageNamed:[self.truckImages objectAtIndex:indexPath.row]];
    //cell.imageView.image = truckImage;
    
    //mais ao menos
//    UILabel *label = [[UILabel alloc] init];
//    [label setTintColor:[UIColor redColor]];
//    [label setText:@"asdfadsf"];
    
    //[[cell contentView] addSubview:label];
    //[cell addSubview:label];
    
    //mais ao menos
//    UIView *bgView = [[UIView alloc] initWithFrame:cell.backgroundView.frame];
//    bgView.backgroundColor = [UIColor blueColor];
//    bgView.layer.borderColor = [[UIColor yellowColor] CGColor];
//    bgView.layer.borderWidth = 4;
//    //cell.selectedBackgroundView = bgView;
//    cell.BackgroundView = bgView;
    
    //UIView
    //mais ao menos
//    UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, cell.bounds.size.width, 50)];
//    title.tag = 200;
//    title.text = @"Tone";
//    [title setTintColor:[UIColor redColor]];
//    [cell.contentView addSubview:title];
    
    return cell;
}






@end
