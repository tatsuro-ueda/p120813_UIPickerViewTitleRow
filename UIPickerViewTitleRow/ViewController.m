//
//  ViewController.m
//  UIPickerViewTitleRow
//
//  Created by 達郎 植田 on 12/08/13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize picker;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *restaurant1 = [[NSDictionary alloc] initWithObjectsAndKeys:[NSArray arrayWithObjects:@"Food1", @"Food2",@"Food3", nil], @"name", nil];
    
    NSDictionary *restaurant2 = [[NSDictionary alloc] initWithObjectsAndKeys:[NSArray arrayWithObjects:@"Food4", @"Food5", nil], @"name", nil];
    dic = [[NSDictionary alloc] initWithObjectsAndKeys:
           restaurant1, @"restaurant1",
           restaurant2, @"restaurant2", nil];
    restaurantName = @"restaurant1";
}

- (void)viewDidUnload
{
    [self setPicker:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSString *)pickerView:(UIPickerView *)pickerView 
            titleForRow:(NSInteger)row 
           forComponent:(NSInteger)component
{
    return [[[dic objectForKey:restaurantName] objectForKey:@"name"] objectAtIndex:row];
}

-(NSInteger)pickerView:(UIPickerView *)pickerView 
numberOfRowsInComponent:(NSInteger)component
{
    return [[[dic objectForKey:restaurantName] objectForKey:@"name"] count];
}

- (IBAction)change:(id)sender {
    if ([restaurantName isEqualToString:@"restaurant1"]) {
        restaurantName = @"restaurant2";
    }
    else {
        restaurantName = @"restaurant1";
    }
    [picker reloadAllComponents];
}
@end
