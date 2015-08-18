//
//  ViewController.m
//  SpaceGame
//
//  Created by Matthew Turk on 7/18/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
int userHighestLevel;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *levelReached = [[NSUserDefaults standardUserDefaults]stringForKey:@"levelReached"];
    userHighestLevel = [levelReached intValue];
    
    passButton.layer.borderWidth = 1.0f;
    passButton.layer.borderColor = [[UIColor blueColor]CGColor];
    submitButton.layer.borderWidth = 1.0f;
    submitButton.layer.borderColor = [[UIColor blueColor]CGColor];
    restartButton.layer.borderWidth = 1.0f;
    restartButton.layer.borderColor = [[UIColor blueColor]CGColor];
    [answerField becomeFirstResponder];
    
    
    [self questions];
}


-(void)viewDidAppear:(BOOL)animated {
    [answerField becomeFirstResponder];
}


-(void)questions {
    answerField.text = nil;
    
    if (userHighestLevel == 0) {
        // 1
        question.text = @"True or False: All of space is completely silent.";
    }
    if (userHighestLevel == 1) {
        // 2
        question.text = @"How many planets are in our solar system?";
    }
    if (userHighestLevel == 2) {
        // 3
        question.text = @"Approximately how many minutes does it take light from the Sun to reach Earth?";
    }
    if (userHighestLevel == 3) {
        // 4
        question.text = @"True of False: The Sun makes up roughly 99% of the mass of our solar system.";
    }
    if (userHighestLevel == 4) {
        //
        question.text = @"What is the name of the largest asteroid ever recorded (that even has a surface area roughly equal to the land area of India or Argentina) and is now considered a dwarf planet?";
    }
    if (userHighestLevel == 5) {
        // 6
        question.text = @"What is the name of the most distant human-made object we have ever sent into space?";
    }
    if (userHighestLevel == 6) {
        // 7
        question.text = @"If there were an equal amount of _ and matter in the universe, all life would be annihilated.";
    }
    if (userHighestLevel == 7) {
        // 8
        question.text = @"What chemical compound is the atmosphere of Mars mostly composed of?";
    }
    if (userHighestLevel == 8) {
        // 9
        question.text = @"Approximately how many days does a trip to Mars from Earth take when Mars is at its closest approach to Earth?";
    }
    if (userHighestLevel == 9) {
        // 10
        question.text = @"This remote and extremely massive celestial object emits extremely large amounts of energy and usually resembles a star in appearance; it could theoretically contain massive black holes and may represent a stage in the evolution of some galaxies";
    }
    if (userHighestLevel > 9) {
        question.text = nil;
        answerField.text = nil;
        win.text = @"You Win!";
        userHighestLevel = 0;
        
    }
    
}


-(IBAction)solveProblem:(id)sender {
    if (userHighestLevel == 0 && [answerField.text isEqualToString:@"True"]) {
        userHighestLevel = 1;
        NSString *completedLevel = @"1";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else if (userHighestLevel == 0 && ![answerField.text isEqualToString:@"True"]) {
        answerField.text = nil;
    }
    
    if (userHighestLevel == 1 && [answerField.text isEqualToString:@"8"]) {
        userHighestLevel = 2;
        NSString *completedLevel = @"2";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else if (userHighestLevel == 1 && ![answerField.text isEqualToString:@"8"]) {
        answerField.text = nil;
    }
    
    if (userHighestLevel == 2 && [answerField.text isEqualToString:@"8"]) {
        userHighestLevel = 3;
        NSString *completedLevel = @"3";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else if (userHighestLevel == 2 && ![answerField.text isEqualToString:@"8"]) {
        answerField.text = nil;
    }
    
    if (userHighestLevel == 3 && [answerField.text isEqualToString:@"True"]) {
        userHighestLevel = 4;
        NSString *completedLevel = @"4";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else if (userHighestLevel == 3 && ![answerField.text isEqualToString:@"True"]) {
        answerField.text = nil;
    }
    
    if (userHighestLevel == 4 && [answerField.text isEqualToString:@"Ceres"]) {
        userHighestLevel = 5;
        NSString *completedLevel = @"5";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else if (userHighestLevel == 4 && ![answerField.text isEqualToString:@"Ceres"]) {
        answerField.text = nil;
    }
    
    if (userHighestLevel == 5 && [answerField.text isEqualToString:@"Voyager 1"]) {
        userHighestLevel = 6;
        NSString *completedLevel = @"6";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else if (userHighestLevel == 5 && ![answerField.text isEqualToString:@"Voyager 1"]) {
        answerField.text = nil;
    }
    
    if (userHighestLevel == 6 && [answerField.text isEqualToString:@"Antimatter"]) {
        userHighestLevel = 7;
        NSString *completedLevel = @"7";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else if (userHighestLevel == 6 && ![answerField.text isEqualToString:@"Antimatter"]) {
        answerField.text = nil;
    }
    
    if (userHighestLevel == 7 && [answerField.text isEqualToString:@"Carbon Dioxide"]) {
        userHighestLevel = 8;
        NSString *completedLevel = @"8";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else if (userHighestLevel == 7 && ![answerField.text isEqualToString:@"Carbon Dioxide"]) {
        answerField.text = nil;
    }
    
    if (userHighestLevel == 8 && [answerField.text isEqualToString:@"260"]) {
        userHighestLevel = 9;
        NSString *completedLevel = @"9";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else if (userHighestLevel == 8 && ![answerField.text isEqualToString:@"260"]) {
        answerField.text = nil;
    }
    
    if (userHighestLevel == 9 && [answerField.text isEqualToString:@"Quasar"]) {
        userHighestLevel = 10;
        NSString *completedLevel = @"10";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
    }
    else if (userHighestLevel == 9 && ![answerField.text isEqualToString:@"Quasar"]) {
        answerField.text = nil;
    }
    

    
}


-(IBAction)restartGame:(id)sender {
    userHighestLevel = 0;
    win.text = nil;
    [self questions];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
