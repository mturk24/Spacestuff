//
//  PlayModeViewController.h
//  CosmoQuiz
//
//  Created by Matthew Turk on 7/22/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface PlayModeViewController : UIViewController {
    IBOutlet UIButton *easyButton;
    IBOutlet UIButton *intermediateButton;
    IBOutlet UIButton *hardButton;
    IBOutlet UIImageView *orbitImage;
    IBOutlet UIImageView *planet;// X/Y = 87/173, W/H = 147/128
    AVAudioPlayer *sound;
    
}

@end
