//
//  SampleMobileAppUITests.m
//  SampleMobileAppUITests
//
//  Created by Robert Brais on 10/23/18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface SampleMobileAppUITests : XCTestCase

@end

@implementation SampleMobileAppUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}


- (void)testSayHelloWorld {
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Say Hello"] tap];
    [app.staticTexts[@"Hello World!"] tap];
    
    
}

-(void) testSayHelloName{
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [[[app.otherElements containingType:XCUIElementTypeStaticText identifier:@"Type your name..."] childrenMatchingType:XCUIElementTypeTextField].element tap];
    
    XCUIElement *shiftButton = app/*@START_MENU_TOKEN@*/.buttons[@"shift"]/*[[".keyboards.buttons[@\"shift\"]",".buttons[@\"shift\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [shiftButton tap];
    
    XCUIElement *jKey = app/*@START_MENU_TOKEN@*/.keys[@"J"]/*[[".keyboards.keys[@\"J\"]",".keys[@\"J\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [jKey tap];
    
    XCUIElement *aKey = app/*@START_MENU_TOKEN@*/.keys[@"a"]/*[[".keyboards.keys[@\"a\"]",".keys[@\"a\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [aKey tap];
    
    XCUIElement *nKey = app/*@START_MENU_TOKEN@*/.keys[@"n"]/*[[".keyboards.keys[@\"n\"]",".keys[@\"n\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [nKey tap];
    
    XCUIElement *eKey = app/*@START_MENU_TOKEN@*/.keys[@"e"]/*[[".keyboards.keys[@\"e\"]",".keys[@\"e\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [eKey tap];
    
    XCUIElement *spaceKey = app/*@START_MENU_TOKEN@*/.keys[@"space"]/*[[".keyboards.keys[@\"space\"]",".keys[@\"space\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [spaceKey tap];
    [shiftButton tap];
    
    XCUIElement *dKey = app/*@START_MENU_TOKEN@*/.keys[@"D"]/*[[".keyboards.keys[@\"D\"]",".keys[@\"D\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [dKey tap];
    
    XCUIElement *oKey = app/*@START_MENU_TOKEN@*/.keys[@"o"]/*[[".keyboards.keys[@\"o\"]",".keys[@\"o\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [oKey tap];

    [eKey tap];
    
    [app.buttons[@"Say Hello"] tap];
    [app.staticTexts[@"Hello Jane Doe!"] tap];
    
    
}

@end
