//
//  LoginVC.m
//  TestApp
//
//  Created by Andrew Takao on 4/30/17.
//  Copyright © 2017 Andrew Takao. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "LoginVC.h"
#import "CustomIOSAlertView.h"

@implementation LoginViewController

-(void)addLayout:(NSString*)format
{
    NSArray* constraints = [
                            NSLayoutConstraint
                            constraintsWithVisualFormat: format
                            options: 0
                            metrics: nil
                            views: self.viewNames
                            ];
    
    [self.view addConstraints:constraints];
}

- (void)openScheme:(NSString *)scheme {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:scheme];
    [application openURL:URL options:@{} completionHandler:^(BOOL success) {
        if (success) {
            NSLog(@"Opened %@",scheme);
        }
        else {
            NSLog(@"Failed");
        }
    }];
}

- (BOOL)schemeAvailable:(NSString *)scheme {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:scheme];
    return [application canOpenURL:URL];
}

-(void)facebookTapped{
    BOOL fbInstalled = [self schemeAvailable:@"fb://"];
    if (fbInstalled) {
        NSLog(@"Installed");
        NSURL *facebookURL = [NSURL URLWithString:@"fb://profile/661299413"];
        if ([[UIApplication sharedApplication] canOpenURL:facebookURL]) {
            [[UIApplication sharedApplication] openURL:facebookURL];
        } else {
            NSLog(@"didn't work");
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://facebook.com"]];
        }
    }
    else {
        NSLog(@"Not installed");
        [self openScheme:@"http://www.facebook.com/661299413"];
    }
    //insert fb id depending on user mine 661299413
//    NSURL *facebookURL = [NSURL URLWithString:@"fb://profile/661299413"];
//    if ([[UIApplication sharedApplication] canOpenURL:facebookURL]) {
//        [[UIApplication sharedApplication] openURL:facebookURL];
//    } else {
//        NSLog(@"didn't work");
//        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://facebook.com"]];
//    }
}

-(void)profileTapped{
    CustomIOSAlertView *alertView = [[CustomIOSAlertView alloc] init];
    UIImageView *customView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 10, 400, 600)];
    UIImage *profileImage = [UIImage imageNamed:@"profile3.jpg"];
    [customView setImage:profileImage];
    
    [alertView setContainerView:customView];
    [alertView show];
    
//    ProfilePictures *alertView = [[ProfilePictures alloc] init];
//    Add some custom content to the alert view (optional)
//    
//    UIView *customView ..;
//    
//    [alertView setContainerView:customView];
//    Display the dialog
//    
//    [alertView show];
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Popup Title"
//                                                    message:nil
//                                                   delegate:nil
//                                          cancelButtonTitle:@"Close"
//                                          otherButtonTitles:nil];
//    
//    UIImageView *tempImageView=[[UIImageView alloc]initWithFrame:CGRectMake(20,20,50,50)];
//    
//    tempImageView.image=[UIImage imageNamed:@"profile3.jpg"];
//    
//    [alert addSubview:tempImageView];
//    
//    [alert show];
}

-(void)contactTapped{
    
    NSString *contactmessage = @"takaoandrew@gmail.com\r631-398-9782";
//
//    UIAlertController* alert = [UIAlertController alertControllerWithTitle:contactmessage
//                                                                   message:@" "
//                                                            preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
//                                                          handler:^(UIAlertAction * action) {}];
//
//    [alert addAction:defaultAction];
//    [self presentViewController:alert animated:YES completion:nil];
//    
    UIAlertView *contacttoast = [[UIAlertView alloc]
                          initWithTitle:nil
                          message:contactmessage
                          delegate:nil
                          cancelButtonTitle:@"Close"
                          otherButtonTitles:nil, nil];
    [contacttoast show];
    
    int duration = 20; // duration in seconds
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [contacttoast dismissWithClickedButtonIndex:0 animated:YES];
    });
    NSLog(@"single Tap on imageview");
}

-(void)echoTapped{
    NSString *message = @"Coming Soon...";
    
    UIAlertView *toast = [[UIAlertView alloc]
                          initWithTitle:nil
                          message:message
                          delegate:nil
                          cancelButtonTitle:nil
                          otherButtonTitles:nil, nil];
    [toast show];
    
    int duration = 1; // duration in seconds
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [toast dismissWithClickedButtonIndex:0 animated:YES];
    });
    NSLog(@"single Tap on imageview");
}

-(void)loadView
{
    self.view = [
                 [UIView alloc]
                 initWithFrame: CGRectMake(0, 0, 0, 0)];
    
    self.view.backgroundColor =
    [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.profileView = [[UIImageView alloc] init];
    
    self.nameWrapper = [[UIView alloc] init];
    self.nameView = [[UILabel alloc] init];
    
    self.connectWrapper = [[UIView alloc] init];
    self.connectView = [[UILabel alloc] init];
    self.connectNumberView = [[UILabel alloc] init];
    
    self.friendView = [[UILabel alloc] init];
    self.friendNumberView = [[UILabel alloc] init];
    self.contactButton = [[UIButton alloc] init];
    self.echoButton = [[UIButton alloc] init];
    self.facebookView = [[UIImageView alloc] init];
    self.instagramView = [[UIImageView alloc] init];
    self.snapchatView = [[UIImageView alloc] init];
    self.facebookUser = [[UILabel alloc] init];
    self.instagramUser = [[UILabel alloc] init];
    self.snapchatUser = [[UILabel alloc] init];
    self.facebookMutual = [[UILabel alloc] init];
    self.instagramMutual = [[UILabel alloc] init];
    
    [self.connectWrapper addSubview:self.connectView];
    [self.connectWrapper addSubview:self.connectNumberView];
    [self.view addSubview:self.contactButton];
    [self.view addSubview:self.echoButton];
    [self.view addSubview:self.profileView];
    [self.view addSubview:self.nameView];
    [self.view addSubview:self.connectNumberView];
    [self.view addSubview:self.connectView];
    [self.view addSubview:self.friendNumberView];
    [self.view addSubview:self.friendView];
    [self.view addSubview:self.facebookView];
    [self.view addSubview:self.instagramView];
    [self.view addSubview:self.snapchatView];
    [self.view addSubview:self.facebookUser];
    [self.view addSubview:self.instagramUser];
    [self.view addSubview:self.snapchatUser];
    [self.view addSubview:self.facebookMutual];
    [self.view addSubview:self.instagramMutual];
    
    self.viewNames = @{
                       @"view"     : self.view,
                       @"contact"  : self.contactButton,
                       @"echo"     : self.echoButton,
                       @"profile"  : self.profileView,
                       @"connectnum"  : self.connectNumberView,
                       @"connect"  : self.connectView,
                       @"friendnum"  : self.friendNumberView,
                       @"friend"  : self.friendView,
                       @"name"     : self.nameView,
                       @"facebookimg"     : self.facebookView,
                       @"instagramimg": self.instagramView,
                       @"snapchatimg"     : self.snapchatView
                       };
    
    self.contactButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.echoButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.profileView.translatesAutoresizingMaskIntoConstraints = NO;
    self.nameView.translatesAutoresizingMaskIntoConstraints = NO;
    self.connectView.translatesAutoresizingMaskIntoConstraints = NO;
    self.connectNumberView.translatesAutoresizingMaskIntoConstraints = NO;
    self.friendView.translatesAutoresizingMaskIntoConstraints = NO;
    self.friendNumberView.translatesAutoresizingMaskIntoConstraints = NO;
    self.facebookView.translatesAutoresizingMaskIntoConstraints = NO;
    self.instagramView.translatesAutoresizingMaskIntoConstraints = NO;
    self.snapchatView.translatesAutoresizingMaskIntoConstraints = NO;
    self.facebookUser.translatesAutoresizingMaskIntoConstraints = NO;
    self.instagramUser.translatesAutoresizingMaskIntoConstraints = NO;
    self.snapchatUser.translatesAutoresizingMaskIntoConstraints = NO;
    self.facebookMutual.translatesAutoresizingMaskIntoConstraints = NO;
    self.instagramMutual.translatesAutoresizingMaskIntoConstraints = NO;

    
    self.profileView.image = [UIImage imageNamed:@"profile3.jpg"];
    self.facebookView.image = [UIImage imageNamed:@"facebook.png"];
    self.instagramView.image = [UIImage imageNamed:@"instagram.jpg"];
    self.snapchatView.image = [UIImage imageNamed:@"snapchat.png"];
    self.nameView.text = @"Andrew Takao";
    self.connectNumberView.text = @"20";
    self.connectView.text = @"Connects";
    self.friendNumberView.text = @"10";
    self.friendView.text = @"Friends";
    self.facebookUser.text = @"takaoandrew";
    self.instagramUser.text = @"andrewtakao";
    self.snapchatUser.text = @"chocotaco";
    self.facebookMutual.text = @"10 Mutual";
    self.instagramMutual.text = @"12 Mutual";
    
    UITapGestureRecognizer *facebookTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(facebookTapped)];
    facebookTap.numberOfTapsRequired = 1;
    [_facebookView setUserInteractionEnabled:YES];
    [_facebookView addGestureRecognizer:facebookTap];
    
    UITapGestureRecognizer *contactTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(contactTapped)];
    contactTap.numberOfTapsRequired = 1;
    [_contactButton setUserInteractionEnabled:YES];
    [_contactButton addGestureRecognizer:contactTap];
    
    UITapGestureRecognizer *echoTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(echoTapped)];
    echoTap.numberOfTapsRequired = 1;
    [_echoButton setUserInteractionEnabled:YES];
    [_echoButton addGestureRecognizer:echoTap];
    
    UITapGestureRecognizer *profileTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(profileTapped)];
    profileTap.numberOfTapsRequired = 1;
    [self.profileView setUserInteractionEnabled:YES];
    [self.profileView addGestureRecognizer:profileTap];
    
    
    
    [self.contactButton
     setTitle: @"Contact"
     forState: UIControlStateNormal];
    
    [self.contactButton
     setTitleColor: self.view.tintColor
     forState: UIControlStateNormal];
    
    [self.echoButton
     setTitle: @"Echo"
     forState: UIControlStateNormal];
    
    [self.echoButton
     setTitleColor: self.view.tintColor
     forState: UIControlStateNormal];
    
    // Set the width of the email field
    
    //changed these to be centered
    
//    [self addLayout:@"[email(==100)]"];
//    [self addLayout:@"|-50-[email]-50-|"];
    
    // Set a 10 unit left margin and 20 unit right margin
//    [self addLayout:@"|-50-[password]-50-|"];
    
    // Putt a single '-' instead of a length provides a system defined "small
    // space"
    
    
    [self addLayout:@"|-30-[profile]-|"];
//    [self addLayout:@"|-30-[connect]-|"];
//    [self addLayout:@"|-30-[friend]-|"];
//    [self addLayout:@"|-30-[connectnum]-|"];
    
    // Set up some vertical layout. Note the missing | at the end. We should
    // talk about that.
//    [_connectWrapper addLayout:@"V:|-20-[connect]-[friend]-[connectnum]"]
    [self addLayout:@"V:|-40-[profile]"];
    
    
    //
    // The ASCII visual layout language doesn't support centering views. The
    // following line sets up a centering constraint for emailField:
    //
    // emailField.centerX = 1 * view.centerX + 0
    //
    // Or in other words just
    //
    // emailField.centerX = view.centerX
    //
    
    
    //Echo Button
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.echoButton
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .5
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.echoButton
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: 1.2
                              constant: 50
                              ]];
    //Contact Button
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.contactButton
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .5
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.contactButton
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: .6
                              constant: 0
                              ]];
    //Name
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.nameView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .15
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.nameView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: 1.2
                              constant: 0
                              ]];
    //ConnectNum
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.connectNumberView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .3
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.connectNumberView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: .9
                              constant: 0
                              ]];
    //Connect
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.connectView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .35
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.connectView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: .9
                              constant: 0
                              ]];
    //Friendnum
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.friendNumberView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .3
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.friendNumberView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: 1.5
                              constant: 0
                              ]];
//    Friend
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.friendView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .35
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.friendView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: 1.5
                              constant: 0
                              ]];
//
    //Profile
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.profileView
                              attribute: NSLayoutAttributeWidth
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeWidth
                              multiplier: .2
                              constant: 0
                              ]];
    
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.profileView
                              attribute: NSLayoutAttributeHeight
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeHeight
                              multiplier: .15
                              constant: 0
                              ]];
    //Facebook
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.facebookView
                              attribute: NSLayoutAttributeWidth
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeWidth
                              multiplier: .09
                              constant: 0
                              ]];
    
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.facebookView
                              attribute: NSLayoutAttributeHeight
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeHeight
                              multiplier: .07
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.facebookView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .7
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.facebookView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: .2
                              constant: 0
                              ]];
    //FacebookUser
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.facebookUser
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .7
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.facebookUser
                              attribute: NSLayoutAttributeLeft
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeLeft
                              multiplier: 1
                              constant: 80
                              ]];
    //FacebookMutual
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.facebookMutual
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .7
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.facebookMutual
                              attribute: NSLayoutAttributeTrailing
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeTrailing
                              multiplier: 1
                              constant: -20
                              ]];
    //Instagram
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.instagramView
                              attribute: NSLayoutAttributeWidth
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeWidth
                              multiplier: .11
                              constant: 0
                              ]];
    
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.instagramView
                              attribute: NSLayoutAttributeHeight
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeHeight
                              multiplier: .09
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.instagramView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .9
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.instagramView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: .2
                              constant: 0
                              ]];
    //InstagramUser
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.instagramUser
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .9
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.instagramUser
                              attribute: NSLayoutAttributeLeft
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeLeft
                              multiplier: 1
                              constant: 80
                              ]];
    //InstagramMutual
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.instagramMutual
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .9
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.instagramMutual
                              attribute: NSLayoutAttributeTrailing
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeTrailing
                              multiplier: 1
                              constant: -20
                              ]];
    //Snapchat
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.snapchatView
                              attribute: NSLayoutAttributeWidth
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeWidth
                              multiplier: .1
                              constant: 0
                              ]];
    
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.snapchatView
                              attribute: NSLayoutAttributeHeight
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeHeight
                              multiplier: .08
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.snapchatView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: 1.1
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.snapchatView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: .2
                              constant: 0
                              ]];
    //SnapchatUser
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.snapchatUser
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: 1.1
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.snapchatUser
                              attribute: NSLayoutAttributeLeft
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeLeft
                              multiplier: 1
                              constant: 80
                              ]];


    //
    // Note that all of the visual layout stuff like "|-10-[password]-20-|"
    // can ultimately be created by calling this longer function manually. For
    // example, we could use this long form to set up constraints like
    //
    // password.left = 1 * view.left + 10
    // password.right = 1 * view.right + 20
    //
    // where "left" and "right" refer to the left and right borders of things.
    //
    // This would look something like this:
    //
    // [self.view addConstraint:[
    //     NSLayoutConstraint
    //     constraintWithItem: self.passwordField
    //     attribute: NSLayoutAttributeLeft
    //     relatedBy: NSLayoutRelationEqual
    //     toItem: self.view
    //     attribute: NSLayoutAttributeLeft
    //     multiplier: 1
    //     constant: 10
    // ]];
    // 
    // [self.view addConstraint:[
    //     NSLayoutConstraint
    //     constraintWithItem: self.passwordField
    //     attribute: NSLayoutAttributeRight
    //     relatedBy: NSLayoutRelationEqual
    //     toItem: self.view
    //     attribute: NSLayoutAttributeRight
    //     multiplier: 1
    //     constant: 20
    // ]];
    // 
}

-(void)viewDidLoad
{
    
    
    NSLog(@"The view loaded!");
}

@end
