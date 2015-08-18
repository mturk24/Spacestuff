//
//  MainViewController.m
//  CosmoQuiz
//
//  Created by Matthew Turk on 7/19/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

-(IBAction) play:(id)sender {
//    if(clicked == 0) {
//        clicked = 1;
//        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Beautiful_Ambient_Space_Music__Part_3", [[NSBundle mainBundle] resourcePath]]];
//        NSError *error;
//        sound = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
//        sound.numberOfLoops = 1000;
//        [sound play];
//        
//    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    animatedPicture.animationImages = [NSArray arrayWithObjects:
//                                       [UIImage imageNamed:@"space1.png"],
//                                       [UIImage imageNamed:@"space2.png"],
//                                       [UIImage imageNamed:@"space3.png"],
//                                       [UIImage imageNamed:@"space4.png"],
//                                       [UIImage imageNamed:@"space5.png"],
//                                       [UIImage imageNamed:@"space6.jpg"], nil];
//    [animatedPicture setAnimationRepeatCount:0];
//    animatedPicture.animationDuration = 5;
//    [animatedPicture startAnimating];
    
    if(clicked == 0) {
        clicked = 1;
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Beautiful_Ambient_Space_Music__Part_3.mp3", [[NSBundle mainBundle] resourcePath]]];
        NSError *error;
        sound = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        sound.numberOfLoops = 0;
        [sound play];
        
    }
    playButton.layer.borderWidth = 1.0f;
    playButton.layer.borderColor = [[UIColor blueColor]CGColor];
    aboutButton.layer.borderWidth = 1.0f;
    aboutButton.layer.borderColor = [[UIColor blueColor]CGColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    //stop background sound
//    if([sound isPlaying])
//    {
//        [sound stop];
//    }
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
