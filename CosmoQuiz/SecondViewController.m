//
//  SecondViewController.m
//  SpaceGame
//
//  Created by Matthew Turk on 7/18/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *levelReached = [[NSUserDefaults standardUserDefaults]stringForKey:@"levelReached"];
    int intToString = [levelReached intValue];
    intToString = intToString + 1;
    NSString *stringForLabel = [NSString stringWithFormat:@"You have reached level %i!", intToString];
    highestLevelReached.text = stringForLabel;
    
}

-(IBAction)exit:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
