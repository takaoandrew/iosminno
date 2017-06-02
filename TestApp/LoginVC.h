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
#import "ContentView.h"
#import "ChatTableViewCell.h"

@interface LoginViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

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
@property UIImageView* twitterView;
@property UIImageView* linkedinView;
@property UILabel* facebookUser;
@property UILabel* instagramUser;
@property UILabel* snapchatUser;
@property UILabel* twitterUser;
@property UILabel* linkedinUser;
@property UILabel* facebookMutual;
@property UILabel* instagramMutual;
@property UIImageView* settingsView;
@property UIImageView* avatarView;
@property UIImageView* feedView;
@property UISearchBar* searchBar;


@property UITableView* tableView;
//@property ChatTableViewCell* chatCell;
@property UILabel* testLabel;

@property (weak, nonatomic) IBOutlet UITableView *chatTable;
@property (weak, nonatomic) IBOutlet ContentView *contentView;
@property (weak, nonatomic) IBOutlet UITextView *chatTextView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *chatTextViewHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentViewHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentViewBottomConstraint;

/*Uncomment second line and comment first to use XIB instead of code*/
@property (strong,nonatomic) ChatTableViewCell *chatCell;
//@property (strong,nonatomic) ChatTableViewCellXIB *chatCell;


@property (strong,nonatomic) ContentView *handler;



@end
