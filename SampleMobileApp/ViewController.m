//
//  ViewController.m
//  SampleMobileApp
//
//  Created by Robert Brais on 10/23/18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)sayButtonClicked:(id)sender {
    NSString *name = self.nameField.text;
    if(name.length == 0){
        name = @"World";
    }
    NSString *greeting = [@"Hello " stringByAppendingFormat:@"%@!",name];
    self.helloLabel.text = greeting;
}
@end
