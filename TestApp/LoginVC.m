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


-(void)loadView
{
    self.view = [
                 [UIView alloc]
                 initWithFrame: CGRectMake(0, 0, 0, 0)];
    
    self.view.backgroundColor =
    [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.searchBar = [[UISearchBar alloc] init];
    self.profileView = [[UIImageView alloc] init];
    self.nameView = [[UILabel alloc] init];
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
    
    [self.view addSubview:self.searchBar];
    [self.view addSubview:self.profileView];
    [self.view addSubview:self.nameView];
    [self.view addSubview:self.connectNumberView];
    [self.view addSubview:self.connectView];
    [self.view addSubview:self.friendNumberView];
    [self.view addSubview:self.friendView];
    [self.view addSubview:self.contactButton];
    [self.view addSubview:self.echoButton];
    [self.view addSubview:self.facebookView];
    [self.view addSubview:self.instagramView];
    [self.view addSubview:self.snapchatView];
    [self.view addSubview:self.facebookUser];
    [self.view addSubview:self.instagramUser];
    [self.view addSubview:self.snapchatUser];
    [self.view addSubview:self.facebookMutual];
    [self.view addSubview:self.instagramMutual];
    
    self.viewNames = @{
                       @"view"          : self.view,
                       @"searchbar"     : self.searchBar,
                       @"profile"       : self.profileView,
                       @"name"          : self.nameView,
                       @"connectnum"    : self.connectNumberView,
                       @"connect"       : self.connectView,
                       @"friendnum"     : self.friendNumberView,
                       @"friend"        : self.friendView,
                       @"contact"       : self.contactButton,
                       @"echo"          : self.echoButton,
                       @"facebookimg"   : self.facebookView,
                       @"instagramimg"  : self.instagramView,
                       @"snapchatimg"   : self.snapchatView,
                       @"facebookusr"   : self.facebookUser,
                       @"instagramusr"  : self.instagramUser,
                       @"snapchatusr"   : self.snapchatUser,
                       @"facebookmut"   : self.facebookMutual,
                       @"instagrammut"  : self.instagramMutual
                       };
    
    self.searchBar.translatesAutoresizingMaskIntoConstraints = NO;
    self.profileView.translatesAutoresizingMaskIntoConstraints = NO;
    self.nameView.translatesAutoresizingMaskIntoConstraints = NO;
    self.connectView.translatesAutoresizingMaskIntoConstraints = NO;
    self.connectNumberView.translatesAutoresizingMaskIntoConstraints = NO;
    self.friendView.translatesAutoresizingMaskIntoConstraints = NO;
    self.friendNumberView.translatesAutoresizingMaskIntoConstraints = NO;
    self.contactButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.echoButton.translatesAutoresizingMaskIntoConstraints = NO;
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
    self.instagramView.image = [UIImage imageNamed:@"instagram3.jpg"];
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
    
    UITapGestureRecognizer *profileTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(profileTapped)];
    profileTap.numberOfTapsRequired = 1;
    [self.profileView setUserInteractionEnabled:YES];
    [self.profileView addGestureRecognizer:profileTap];
    
    UITapGestureRecognizer *contactTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(contactTapped)];
    contactTap.numberOfTapsRequired = 1;
    [_contactButton setUserInteractionEnabled:YES];
    [_contactButton addGestureRecognizer:contactTap];
    
    UITapGestureRecognizer *echoTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(echoTapped)];
    echoTap.numberOfTapsRequired = 1;
    [_echoButton setUserInteractionEnabled:YES];
    [_echoButton addGestureRecognizer:echoTap];
    
    UITapGestureRecognizer *facebookTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(facebookTapped)];
    facebookTap.numberOfTapsRequired = 1;
    [_facebookView setUserInteractionEnabled:YES];
    [_facebookView addGestureRecognizer:facebookTap];
    
    UITapGestureRecognizer *instagramTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(instagramTapped)];
    instagramTap.numberOfTapsRequired = 1;
    [_instagramView setUserInteractionEnabled:YES];
    [_instagramView addGestureRecognizer:instagramTap];
    
    UITapGestureRecognizer *snapchatTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(snapchatTapped)];
    snapchatTap.numberOfTapsRequired = 1;
    [_snapchatView setUserInteractionEnabled:YES];
    [_snapchatView addGestureRecognizer:snapchatTap];
    
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

    
    [self addLayout:@"V:|-60-[searchbar]"];
    [self addLayout:@"H:|-[searchbar]-|"];
    
    [self addLayout:@"V:|-140-[name]"];
    [self addLayout:@"H:|-20-[profile(75)]-80-[name]-|"];
    
    [self addLayout:@"V:|-120-[profile(100)]"];
    [self addLayout:@"V:|-170-[connect]"];
    [self addLayout:@"V:|-170-[friend]"];
    [self addLayout:@"V:|-185-[connectnum]"];
    [self addLayout:@"V:|-185-[friendnum]"];
    [self addLayout:@"H:|-20-[profile(75)]-40-[connect]-[friend(==connect)]-|"];
    [self addLayout:@"H:|-20-[profile(75)]-65-[connectnum(==connect)]-0-[friendnum]-|"];
    
    [self addLayout:@"V:|-225-[contact]"];
    [self addLayout:@"V:|-225-[echo]"];
    [self addLayout:@"H:|-90-[contact]-30-[echo]-|"];
//    
//    self.facebookMutual.numberOfLines = 0;
//    self.facebookMutual.lineBreakMode = NSLineBreakByWordWrapping;
    [self addLayout:@"V:|-260-[facebookimg(40)]"];
    [self addLayout:@"V:|-270-[facebookusr]"];
    [self addLayout:@"V:|-270-[facebookmut]"];
    [self addLayout:@"H:|-20-[facebookimg(40)]-30-[facebookusr]-60-[facebookmut]-50@1000-|"];
    [self addLayout:@"V:|-310-[instagramimg(40)]"];
    [self addLayout:@"V:|-320-[instagramusr]"];
    [self addLayout:@"V:|-320-[instagrammut]"];
    [self addLayout:@"H:|-20-[instagramimg(40)]-30-[instagramusr]-60-[instagrammut]-50@1000-|"];
    [self addLayout:@"V:|-360-[snapchatimg(40)]"];
    [self addLayout:@"V:|-370-[snapchatusr]"];
    [self addLayout:@"H:|-20-[snapchatimg(40)]-30-[snapchatusr]-60-|"];
    
}
- (void)addBorder:(UIView *)view toEdge:(UIRectEdge)edge withColor:(UIColor *)color withThickness:(float)thickness{
    UIView *border = [UIView new];
    border.backgroundColor = color;
    [border setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin];
    switch (edge) {
        case UIRectEdgeTop:
            border.frame = CGRectMake(0, 0, view.frame.size.width, thickness);
            break;
        case UIRectEdgeBottom:
            border.frame = CGRectMake(0, view.frame.size.height - thickness, view.frame.size.width, thickness);
            break;
        case UIRectEdgeLeft:
            border.frame = CGRectMake(0, 0, thickness, view.frame.size.height);
            break;
        case UIRectEdgeRight:
            border.frame = CGRectMake(view.frame.size.width - thickness, 0, thickness, view.frame.size.height);
            break;
        default:
            break;
    }
    [view addSubview:border];
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

-(void)instagramTapped{
    BOOL instagramInstalled = [self schemeAvailable:@"instagram://"];
    if (instagramInstalled) {
        NSLog(@"Installed");
        NSURL *instagramURL = [NSURL URLWithString:@"instagram://user?username=chocotako1"];
        if ([[UIApplication sharedApplication] canOpenURL:instagramURL]) {
            [[UIApplication sharedApplication] openURL:instagramURL];
        } else {
            NSLog(@"didn't work");
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://instagram.com"]];
        }
    }
    else {
        NSLog(@"Not installed");
        [self openScheme:@"http://www.instagram.com/chocotako1"];
    }
}

-(void)snapchatTapped{
    BOOL snapchatInstalled = [self schemeAvailable:@"snapchat://"];
    if (snapchatInstalled) {
        NSLog(@"Installed");
        NSURL *snapchatURL = [NSURL URLWithString:@"snapchat://add/chocotako"];
        if ([[UIApplication sharedApplication] canOpenURL:snapchatURL]) {
            [[UIApplication sharedApplication] openURL:snapchatURL];
        } else {
            NSLog(@"didn't work");
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://snapchat.com"]];
        }
    }
    else {
        NSLog(@"Not installed");
        [self openScheme:@"http://www.snapchat.com/add/chocotako"];
    }
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

-(void)viewDidLoad
{
    
    
    NSLog(@"The view loaded!");
}

@end
