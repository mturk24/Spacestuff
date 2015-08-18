//
//  PlayModeViewController.m
//  CosmoQuiz
//
//  Created by Matthew Turk on 7/22/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import "PlayModeViewController.h"

@interface PlayModeViewController ()

@end

@implementation PlayModeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    easyButton.layer.borderWidth = 1.0f;
    easyButton.layer.borderColor = [[UIColor blueColor]CGColor];
    intermediateButton.layer.borderWidth = 1.0f;
    intermediateButton.layer.borderColor = [[UIColor blueColor]CGColor];
    hardButton.layer.borderWidth = 1.0f;
    hardButton.layer.borderColor = [[UIColor blueColor]CGColor];
    CAKeyframeAnimation *orbit = [CAKeyframeAnimation animation];
    orbit.keyPath = @"position";
    orbit.path = CFAutorelease(CGPathCreateWithEllipseInRect(orbitImage.bounds, NULL));
    orbit.duration = 4;
    orbit.additive = YES;
    orbit.repeatCount = HUGE_VALF;
    orbit.calculationMode = kCAAnimationPaced;
    orbit.rotationMode = kCAAnimationRotateAuto;
    
    [planet.layer addAnimation:orbit forKey:@"orbit"];
    CGRect boundingRect = CGRectMake(-100, 30, 200, 200);
    orbit.path = CFAutorelease(CGPathCreateWithEllipseInRect(boundingRect, NULL));
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    //stop background sound
        if([sound isPlaying])
        {
            [sound stop];
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
