//
//  ViewController.m
//  Alert+Action
//
//  Created by Aman Jain on 1/31/13.
//  Copyright (c) 2015 Aman Jain All rights reserved.
//

#import "DemoViewController.h"
#import "UIBAlertView.h"

@interface DemoViewController ()
@property (nonatomic, strong) UIBAlertView *currentAlert;
@end

@implementation DemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

- (IBAction)activateAlert:(id)sender {
    UIBAlertView *alert = [[UIBAlertView alloc] initWithTitle:@"Alert" message:@"Testing" cancelButtonTitle:@"Cancel" otherButtonTitles:@"Button 1",@"Button 2",nil];
    _currentAlert = alert;
    [alert showWithDismissHandler:^(NSInteger selectedIndex, NSString *selectedTitle, BOOL didCancel) {
        if (didCancel) {
            NSLog(@"User cancelled");
            return;
        }
        switch (selectedIndex) {
            case 1:
                NSLog(@"%@ Button 1 clicked", selectedTitle);
                break;
            case 2:
                NSLog(@"%@ Button 2 clicked", selectedTitle);
                break;
            default:
                break;
        }
    }];
}



@end
