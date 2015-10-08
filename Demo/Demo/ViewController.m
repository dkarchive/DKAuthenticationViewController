//
//  ViewController.m
//  Demo
//
//  Created by Daniel Khamsing on 10/8/15.
//  Copyright © 2015 Daniel Khamsing. All rights reserved.
//

#import "ViewController.h"

#import "DKAuthenticationViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIColor *color = [self highlightColor];
    [[UIButton appearance] setTitleColor:color forState:UIControlStateNormal];
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:color} forState:UIControlStateNormal];
}

- (IBAction)actionButton:(id)sender {
    DKAuthenticationViewController *authController = [[DKAuthenticationViewController alloc] init];
    authController.twitter = YES;
    authController.cellBackgroundColor = [[self highlightColor] colorWithAlphaComponent:.1];
    authController.passwordLength = 5;
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:authController];
    [self presentViewController:navigationController animated:YES completion:nil];
}

- (UIColor *)highlightColor {
    return [[UIColor orangeColor] colorWithAlphaComponent:.8];
}

@end
