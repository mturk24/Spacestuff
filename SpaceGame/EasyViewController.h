//
//  EasyViewController.h
//  CosmoQuiz
//
//  Created by Matthew Turk on 7/22/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

int click;
@interface EasyViewController : UIViewController {
    
    IBOutlet UITextView *question;
    IBOutlet UIButton *passButton;
    IBOutlet UIButton *submitButton;
    IBOutlet UIButton *restartButton;
    IBOutlet UITextField *answerField;
    IBOutlet UILabel *win;
    AVAudioPlayer *sounds;
    
    
}

@property (assign) BOOL myBool;
@property (assign) UILabel *wrongMessage;


-(IBAction)solveProblem:(id)sender;

-(IBAction)restartGame:(id)sender;

-(NSInteger)randomNumberBetween;


@end
