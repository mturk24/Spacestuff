//
//  RegisterLoginViewController.m
//  CosmoQuiz
//
//  Created by Matthew Turk on 8/11/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import "RegisterLoginViewController.h"

@interface RegisterLoginViewController ()

@end

@implementation RegisterLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:YES forKey:@"registered"];
    
    if (![defaults boolForKey:@"registered"]) {
        NSLog(@"No user registered");
        
    }
    else {
        NSLog(@"User is registered");
    }
    _registerButn.layer.borderWidth = 1.0f;
    _registerButn.layer.borderColor = [[UIColor blueColor]CGColor];
    _loginButn.layer.borderWidth = 1.0f;
    _loginButn.layer.borderColor = [[UIColor blueColor]CGColor];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginPerson:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults objectForKey:@"username"];
    [defaults objectForKey:@"password"];
    if ([_userField.text isEqualToString:[defaults objectForKey:@"username"]] && [_passField.text isEqualToString:[defaults objectForKey:@"password"]]) {
        UIAlertView *success = [[UIAlertView alloc] initWithTitle:@"Success" message:@"You have successfully logged in!" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [success show];
        [self performSegueWithIdentifier:@"login" sender:self];
    }
    else {
        [self viewDidLoad];
        UIAlertView *err = [[UIAlertView alloc] initWithTitle:@"Oops" message:@"Either your username, your password, or both, are wrong." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [err show];
        
        
    }
    
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
