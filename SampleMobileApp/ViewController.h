//
//  ViewController.h
//  SampleMobileApp
//
//  Created by Robert Brais on 10/23/18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *helloLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
- (IBAction)sayButtonClicked:(id)sender;


@end

