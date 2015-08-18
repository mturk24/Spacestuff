//
//  EasyViewController.m
//  CosmoQuiz
//
//  Created by Matthew Turk on 7/22/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import "EasyViewController.h"

@interface EasyViewController ()

@end
int usersHighestLevel;
int lowerBound = 1;
int upperBound = 5;
int randomNum;



@implementation EasyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *levelReached = [[NSUserDefaults standardUserDefaults]stringForKey:@"levelReached"];
    usersHighestLevel = [levelReached intValue];
    if(click == 0) {
        click = 1;
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/spacemusic.mp3", [[NSBundle mainBundle] resourcePath]]];
        NSError *error;
        sounds = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        sounds.numberOfLoops = 0;
        [sounds play];
        
    }
    
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

-(NSInteger)randomNumberBetween {
    randomNum = lowerBound + arc4random_uniform(upperBound - lowerBound + 1);
    return randomNum;
}


-(void)questions {
    answerField.text = nil;
    [self randomNumberBetween];
    
    if (usersHighestLevel == 0 && randomNum == 1) {
        // 1
        _wrongMessage.text = nil;
        question.text = @"Is the sun a star or a planet?";
    }
    if (usersHighestLevel == 0 && randomNum == 2) {
        // 1
        _wrongMessage.text = nil;
        question.text = @"What is the name of the planet closest to the sun?";
    }
    if (usersHighestLevel == 0 && randomNum == 3) {
        // 1
        _wrongMessage.text = nil;
        question.text = @"True or False: The sun is the center of our solar system.";
    }
    if (usersHighestLevel == 0 && randomNum == 4) {
        // 1
        _wrongMessage.text = nil;
        question.text = @"True or False: Earth is the only planet to have life as far as we know";
    }
    if (usersHighestLevel == 0 && randomNum == 5) {
        // 1
        _wrongMessage.text = nil;
        question.text = @"True or False: Earth only has 1 moon.";
    }
//    if (usersHighestLevel == 1 && _myBool == NO) {
//        // 2
//        question.text = @"How many planets are in our solar system?";
//        wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
//        
//    }
    if (usersHighestLevel == 1 && ![_wrongMessage.text isEqualToString:nil]) {
        // 2
        
        _wrongMessage.text = nil;
        question.text = @"True or False: Humans can breathe normally in space as they can on Earth.";
    }
//    if (usersHighestLevel == 2 && _myBool == NO) {
//        // 3
//        question.text = @"Approximately how many minutes does it take light from the Sun to reach Earth?";
//        wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
//        
//    }
    if (usersHighestLevel == 2 && ![_wrongMessage.text isEqualToString:nil]) {
        // 3
        _wrongMessage.text = nil;
        question.text = @"What planet is known as the red planet?";
    }
    if (usersHighestLevel == 3 && ![_wrongMessage.text isEqualToString:nil]) {
        // 4
        _wrongMessage.text = nil;
        question.text = @"What planet is most famous for the beautiful rings that surround it?";
    }
    if (usersHighestLevel == 4 && ![_wrongMessage.text isEqualToString:nil]) {
        //
        _wrongMessage.text = nil;
        question.text = @"True or False: Human beings have set foot on Mars.";
    }
    if (usersHighestLevel == 5 && ![_wrongMessage.text isEqualToString:nil]) {
        // 6
        _wrongMessage.text = nil;
        question.text = @"True or False: The planet Neptune is larger than Earth.";
    }
    if (usersHighestLevel == 6 && ![_wrongMessage.text isEqualToString:nil]) {
        // 7
        _wrongMessage.text = nil;
        question.text = @"Earth is located in which galaxy?";
    }
    if (usersHighestLevel == 7 && ![_wrongMessage.text isEqualToString:nil]) {
        // 8
        _wrongMessage.text = nil;
        question.text = @"What is the name of the 2nd largest planet in our solar system?";
    }
    if (usersHighestLevel == 8 && ![_wrongMessage.text isEqualToString:nil]) {
        // 9
        question.text = @"What is the name of the force holding us to the Earth?";
    }
    if (usersHighestLevel == 9 && ![_wrongMessage.text isEqualToString:nil]) {
        // 10
        question.text = @"Who was the first person to walk on the moon?";
    }
    if (usersHighestLevel > 9) {
        question.text = nil;
        answerField.text = nil;
        win.text = @"You Win!";
        usersHighestLevel = 0;
        _wrongMessage.text = nil;
        
    }
    
}


-(IBAction)solveProblem:(id)sender {
    if (usersHighestLevel == 0 && [answerField.text isEqualToString:@"Star"]) {
        usersHighestLevel = 1;
        NSString *completedLevel = @"1";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        _myBool = YES;
        [self questions];
    }
    else if (usersHighestLevel == 0 && ![answerField.text isEqualToString:@"Star"]) {
        answerField.text = nil;
        if (![answerField.text isEqualToString:nil]) {
            _wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
        }
       
    }
    
    if (usersHighestLevel == 1 && [answerField.text isEqualToString:@"False"]) {
        usersHighestLevel = 2;
        NSString *completedLevel = @"2";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        _myBool = YES;
        [self questions];
    }
    else if (usersHighestLevel == 1 && ![answerField.text isEqualToString:@"False"]) {
        answerField.text = nil;
//        _wrongMessage.text = nil;
        if (_myBool != YES) {
            _wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
        }
        _myBool = NO;
    }
    
//    if (usersHighestLevel == 2 && [answerField.text isEqualToString:nil]) {
//        wrongMessage.text = nil;
//    }
    if (usersHighestLevel == 2 && [answerField.text isEqualToString:@"Mars"]) {
        usersHighestLevel = 3;
        NSString *completedLevel = @"3";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        _myBool = YES;
        [self questions];
    }
    else if (usersHighestLevel == 2 && ![answerField.text isEqualToString:@"Mars"]) {
        answerField.text = nil;
        if (_myBool != YES) {
            _wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
        }
        _myBool = NO;
        
    }
    
    if (usersHighestLevel == 3 && [answerField.text isEqualToString:@"Saturn"]) {
        usersHighestLevel = 4;
        NSString *completedLevel = @"4";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        _myBool = YES;
        [self questions];
    }
    else if (usersHighestLevel == 3 && ![answerField.text isEqualToString:@"Saturn"]) {
        answerField.text = nil;
        if (_myBool != YES) {
            _wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
        }
        _myBool = NO;
    }
    
    if (usersHighestLevel == 4 && [answerField.text isEqualToString:@"False"]) {
        usersHighestLevel = 5;
        NSString *completedLevel = @"5";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        _myBool = YES;
        [self questions];
    }
    else if (usersHighestLevel == 4 && ![answerField.text isEqualToString:@"False"]) {
        answerField.text = nil;
        if (_myBool != YES) {
            _wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
        }
        _myBool = NO;
    }
    
    if (usersHighestLevel == 5 && [answerField.text isEqualToString:@"True"]) {
        usersHighestLevel = 6;
        NSString *completedLevel = @"6";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        _myBool = YES;
        [self questions];
    }
    else if (usersHighestLevel == 5 && ![answerField.text isEqualToString:@"True"]) {
        answerField.text = nil;
        if (_myBool != YES) {
            _wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
        }
        _myBool = NO;
    }
    
    if (usersHighestLevel == 6 && [answerField.text isEqualToString:@"Milky Way"]) {
        usersHighestLevel = 7;
        NSString *completedLevel = @"7";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        _myBool = YES;
        [self questions];
    }
    else if (usersHighestLevel == 6 && ![answerField.text isEqualToString:@"Milky Way"]) {
        answerField.text = nil;
        if (_myBool != YES) {
            _wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
        }
        _myBool = NO;
    }
    
    if (usersHighestLevel == 7 && [answerField.text isEqualToString:@"Saturn"]) {
        usersHighestLevel = 8;
        NSString *completedLevel = @"8";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        _myBool = YES;
        [self questions];
    }
    else if (usersHighestLevel == 7 && ![answerField.text isEqualToString:@"Saturn"]) {
        answerField.text = nil;
        if (_myBool != YES) {
            _wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
        }
        _myBool = NO;
    }
    
    if (usersHighestLevel == 8 && [answerField.text isEqualToString:@"Gravity"]) {
        usersHighestLevel = 9;
        NSString *completedLevel = @"9";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        _myBool = YES;
        [self questions];
    }
    else if (usersHighestLevel == 8 && ![answerField.text isEqualToString:@"Gravity"]) {
        answerField.text = nil;
        if (_myBool != YES) {
            _wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
        }
        _myBool = NO;
    }
    
    if (usersHighestLevel == 9 && [answerField.text isEqualToString:@"Neil Armstrong"]) {
        usersHighestLevel = 10;
        NSString *completedLevel = @"10";
        [[NSUserDefaults standardUserDefaults] setObject:completedLevel forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        _myBool = YES;
        
    }
    else if (usersHighestLevel == 9 && ![answerField.text isEqualToString:@"Neil Armstrong"]) {
        answerField.text = nil;
        if (_myBool != YES) {
            _wrongMessage.text =  @"That is incorrect! (Did you forget to capitalize?)";
        }
        _myBool = NO;
    }
    
    
    
}




-(IBAction)restartGame:(id)sender {
    usersHighestLevel = 0;
    win.text = nil;
    [self questions];
    
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


-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    //stop background sound
    if([sounds isPlaying])
    {
        [sounds stop];
    }
}










@end
