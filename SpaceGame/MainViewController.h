//
//  MainViewController.h
//  CosmoQuiz
//
//  Created by Matthew Turk on 7/19/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
int clicked;
@interface MainViewController : UIViewController {
    AVAudioPlayer *sound;
    IBOutlet UIButton *playButton;
    IBOutlet UIButton *aboutButton;
    IBOutlet UIImageView *animatedPicture;
    
    
}
-(IBAction) play:(id)sender;

@end
