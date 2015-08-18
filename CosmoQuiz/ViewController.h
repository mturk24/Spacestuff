//
//  ViewController.h
//  SpaceGame
//
//  Created by Matthew Turk on 7/18/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {

    IBOutlet UITextView *question;
    IBOutlet UIButton *passButton;
    IBOutlet UIButton *submitButton;
    IBOutlet UIButton *restartButton;
    IBOutlet UITextField *answerField;
    IBOutlet UILabel *win;
    
}


-(IBAction)solveProblem:(id)sender;

-(IBAction)restartGame:(id)sender;



@end

