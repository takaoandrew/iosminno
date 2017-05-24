 //
//  LoginVC.h
//  TestApp
//
//  Created by Andrew Takao on 4/30/17.
//  Copyright © 2017 Andrew Takao. All rights reserved.
//
//
//#ifndef LoginVC_h
//#define LoginVC_h


//#endif /* LoginVC_h */

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property NSDictionary* viewNames;

@property UIButton* contactButton;
@property UIButton* echoButton;
@property UIImageView* profileView;
@property UIView* nameWrapper;
@property UILabel* nameView;
@property UIView* connectWrapper;
@property UILabel* connectNumberView;
@property UILabel* friendNumberView;
@property UILabel* connectView;
@property UILabel* friendView;
@property UIImageView* facebookView;
@property UIImageView* instagramView;
@property UIImageView* snapchatView;
@property UILabel* facebookUser;
@property UILabel* instagramUser;
@property UILabel* snapchatUser;
@property UILabel* facebookMutual;
@property UILabel* instagramMutual;

@end
