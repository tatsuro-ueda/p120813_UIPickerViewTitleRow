//
//  ViewController.h
//  UIPickerViewTitleRow
//
//  Created by 達郎 植田 on 12/08/13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
{
    NSDictionary    *dic;
    NSArray         *array;
    NSString        *restaurantName;
}
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
- (IBAction)change:(id)sender;
@end
