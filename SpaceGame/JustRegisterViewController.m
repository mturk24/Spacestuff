//
//  JustRegisterViewController.m
//  CosmoQuiz
//
//  Created by Matthew Turk on 8/16/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import "JustRegisterViewController.h"

@interface JustRegisterViewController ()

@end

@implementation JustRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:NO forKey:@"registered"];
    if (![defaults boolForKey:@"registered"]) {
        NSLog(@"No user registered");
        
    }
    else {
        NSLog(@"User is registered");
    }
    _registerButn.layer.borderWidth = 1.0f;
    _registerButn.layer.borderColor = [[UIColor blueColor]CGColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)checkPasswords {
    if ([_passField.text isEqualToString:_passagainField.text]) {
        NSLog(@"The passwords match!");
        [self registerNewPerson];
    }
    else {
        NSLog(@"The passwords don't match.");
        UIAlertView *err = [[UIAlertView alloc] initWithTitle:@"Oops" message:@"Your entered passwords do not match." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [err show];
    }
}

- (IBAction)registerPerson:(id)sender {
    if ([_userField.text isEqualToString:@""] || [_passField.text isEqualToString:@""] || [_passagainField.text isEqualToString:@""]) {
        UIAlertView *err = [[UIAlertView alloc] initWithTitle:@"Oops" message:@"You must fill out every field" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [err show];
    }
    else {
        [self checkPasswords];
    }
}

- (void)registerNewPerson {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:_userField.text forKey:@"username"];
    [defaults setObject:_passField.text forKey:@"password"];
    [defaults setBool:YES forKey:@"registered"];
    [defaults synchronize];
    UIAlertView *success = [[UIAlertView alloc] initWithTitle:@"Success" message:@"You have registered a new user!" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [success show];
    
    //    [self performSegueWithIdentifier:@"login" sender:self];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
