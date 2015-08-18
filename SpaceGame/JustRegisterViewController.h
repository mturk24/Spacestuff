//
//  JustRegisterViewController.h
//  CosmoQuiz
//
//  Created by Matthew Turk on 8/16/15.
//  Copyright (c) 2015 Matthew Turk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JustRegisterViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *registerButn;
@property (strong, nonatomic) IBOutlet UITextField *userField;
@property (strong, nonatomic) IBOutlet UITextField *passField;
@property (strong, nonatomic) IBOutlet UITextField *passagainField;
@property (strong, nonatomic) IBOutlet UILabel *userLabel;
@property (strong, nonatomic) IBOutlet UILabel *passLabel;
@property (strong, nonatomic) IBOutlet UILabel *passagainLabel;

- (IBAction)registerPerson:(id)sender;
- (void)registerNewPerson;
@property BOOL status;
@end
