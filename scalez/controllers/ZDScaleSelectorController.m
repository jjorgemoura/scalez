//
//  ZDScaleSelectorController.m
//  scalez
//
//  Created by Jorge Moura on 05/06/14.
//  Copyright (c) 2014 Jorge Moura. All rights reserved.
//

#import "ZDScaleSelectorController.h"

#import "ZDScaleType.h"
#import "ZDNote.h"


@interface ZDScaleSelectorController ()

//@property (nonatomic, strong) ZDNote *note;
//@property (nonatomic, strong) ZDScaleType *scaleType;

@property (nonatomic, copy) NSArray *notesList;
@property (nonatomic, copy) NSArray *scaleTypeList;

@property (weak, nonatomic) IBOutlet UIPickerView *scaleTypePickerView;

@end


@implementation ZDScaleSelectorController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setTitle:@"Choose ..."];
    
    
    [self setScaleTypeList:[ZDScaleType list]];
    [self setNotesList:[ZDNote list]];
    
    
    
    if([self theNote]) {
        
        NSInteger position = [[self theNote] note] - 1;
        
        [[self scaleTypePickerView] selectRow:position inComponent:0 animated:YES];
    }
    
    if([self theScaleType]) {
        
        int position = [[[self theScaleType] scaleID] intValue] - 1;
        
        [[self scaleTypePickerView] selectRow:position inComponent:1 animated:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Segue Navigation
//---------------------------------------------------------------------------------------// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
}



//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - PickerView Datasource
//---------------------------------------------------------------------------------------

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {

    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {

    NSInteger numRows = 0;
    
    if (component == 0) {
        numRows = [[self notesList] count];
    }

    if (component == 1) {
        numRows = [[self scaleTypeList] count];
    }
    
    return numRows;
}



//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - PickerView Delegate
//---------------------------------------------------------------------------------------
- (NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component {

    NSAttributedString *as = nil;
    
    
    if (component == 0) {
        ZDNote *obj = [[self notesList] objectAtIndex:row];
        as = [[NSAttributedString alloc] initWithString:[obj description]];
    }
    
    if (component == 1) {
        
        ZDScaleType *obj = [[self scaleTypeList] objectAtIndex:row];
        as = [[NSAttributedString alloc] initWithString:[obj type]];
    }
    
    return as;
}



- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {

    if(pickerView == [self scaleTypePickerView]) {
        
        if (component == 0) {
        
//            ZDNote *xxxx = [[self notesList] objectAtIndex:row];
//            NSLog(@"%i", xxxx.note);
//            NSLog(@"%@", xxxx.noteText);
            
            [self setTheNote:[[self notesList] objectAtIndex:row]];
        }
        
        if (component == 1) {
            
            //NSLog(@"%@", [[self scaleTypeList] objectAtIndex:row]);
            [self setTheScaleType:[[self scaleTypeList] objectAtIndex:row]];
        }
    }
}


//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#pragma mark - Target/Action
//---------------------------------------------------------------------------------------
- (IBAction)okButtonPressed:(id)sender {
    
    //[[self navigationController] popViewControllerAnimated:YES];
    
    [[self delegate] viewController:self didSelectZDnote:[self theNote] andZDScalteType:[self theScaleType]];
    
}




@end
