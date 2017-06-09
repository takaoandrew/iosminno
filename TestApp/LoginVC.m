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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (arrayData.count > 0) {
        return arrayData.count;
    }
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    UILabel *myLabel;
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier: @"cell1"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.textLabel.numberOfLines = 0;
        cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:17.0];
        cell.textLabel.text = [arrayData objectAtIndex:indexPath.row];
        cell.textLabel.textAlignment = NSTextAlignmentRight;
        
        cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"avatar.png"]];
        cell.accessoryView.frame = CGRectMake(20, 0, 20, 20);
    }
//    cell.textLabel.text = [NSString stringWithFormat:@"%@",arrayData[indexPath.row]];
    
//    UIImageView *avatarView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"avatar.png"]];
//    cell.accessoryView = avatarView;
//    [avatarView sizeToFit];
//    [avatarView release];
    
    
//    UIImage* avatarImage = [UIImage imageNamed:@"avatar.png"];
//    cell.imageView.image = avatarImage;
//    
//    CGSize itemSize = CGSizeMake(20, 20);
//    UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
//    CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
//    [cell.imageView.image drawInRect:imageRect];
//    cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
    
//    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    
    
    

    NSLog(@"title of cell %@", [arrayData objectAtIndex:indexPath.row]);
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [arrayToDelete addObject:arrayData[indexPath.row]];
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    [arrayToDelete removeObject:arrayData[indexPath.row]];
}

-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 3;
}

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
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    
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
    self.seeMore = [[UILabel alloc] init];
    self.facebookView = [[UIImageView alloc] init];
    self.instagramView = [[UIImageView alloc] init];
    self.snapchatView = [[UIImageView alloc] init];
    self.twitterView = [[UIImageView alloc] init];
    self.linkedinView = [[UIImageView alloc] init];
    self.facebookUser = [[UILabel alloc] init];
    self.instagramUser = [[UILabel alloc] init];
    self.snapchatUser = [[UILabel alloc] init];
    self.twitterUser = [[UILabel alloc] init];
    self.linkedinUser = [[UILabel alloc] init];
    self.facebookMutual = [[UILabel alloc] init];
    self.instagramMutual = [[UILabel alloc] init];
    self.settingsView = [[UIImageView alloc] init];
    self.avatarView = [[UIImageView alloc] init];
    self.feedView = [[UIImageView alloc] init];
    
    arrayData = [[NSMutableArray alloc] init];
    arrayToDelete = [[NSMutableArray alloc] init];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 100, 200) style:UITableViewStylePlain];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.txtField = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 1380, 1080)];
    
    self.txtField.borderStyle = UITextBorderStyleRoundedRect;
    self.txtField.placeholder = @"Simple Text field";
    
    
    self.btnAdd = [[UIButton alloc] init];
    self.btnDelete = [[UIButton alloc] init];
    
    
    [self.view addSubview:self.searchBar];
    [self.view addSubview:self.profileView];
    [self.view addSubview:self.nameView];
    [self.view addSubview:self.connectNumberView];
    [self.view addSubview:self.connectView];
    [self.view addSubview:self.friendNumberView];
    [self.view addSubview:self.friendView];
    [self.view addSubview:self.contactButton];
    [self.view addSubview:self.echoButton];
    [self.view addSubview:self.seeMore];
    [self.view addSubview:self.facebookView];
    [self.view addSubview:self.instagramView];
//    [self.view addSubview:self.snapchatView];
//    [self.view addSubview:self.twitterView];
//    [self.view addSubview:self.linkedinView];
    [self.view addSubview:self.facebookUser];
    [self.view addSubview:self.instagramUser];
//    [self.view addSubview:self.snapchatUser];
//    [self.view addSubview:self.twitterUser];
//    [self.view addSubview:self.linkedinUser];
    [self.view addSubview:self.facebookMutual];
    [self.view addSubview:self.instagramMutual];
    [self.view addSubview:self.settingsView];
    [self.view addSubview:self.avatarView];
    [self.view addSubview:self.feedView];
    [self.view addSubview:self.tableView];
    [self.view addSubview:self.txtField];
    [self.view addSubview:self.btnAdd];
//    [self.view addSubview:self.btnDelete];
    
    self.searchBar.translatesAutoresizingMaskIntoConstraints = NO;
    self.profileView.translatesAutoresizingMaskIntoConstraints = NO;
    self.nameView.translatesAutoresizingMaskIntoConstraints = NO;
    self.connectView.translatesAutoresizingMaskIntoConstraints = NO;
    self.connectNumberView.translatesAutoresizingMaskIntoConstraints = NO;
    self.friendView.translatesAutoresizingMaskIntoConstraints = NO;
    self.friendNumberView.translatesAutoresizingMaskIntoConstraints = NO;
    self.contactButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.echoButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.seeMore.translatesAutoresizingMaskIntoConstraints = NO;
    self.facebookView.translatesAutoresizingMaskIntoConstraints = NO;
    self.instagramView.translatesAutoresizingMaskIntoConstraints = NO;
    self.snapchatView.translatesAutoresizingMaskIntoConstraints = NO;
    self.twitterView.translatesAutoresizingMaskIntoConstraints = NO;
    self.linkedinView.translatesAutoresizingMaskIntoConstraints = NO;
    self.facebookUser.translatesAutoresizingMaskIntoConstraints = NO;
    self.instagramUser.translatesAutoresizingMaskIntoConstraints = NO;
    self.snapchatUser.translatesAutoresizingMaskIntoConstraints = NO;
    self.twitterUser.translatesAutoresizingMaskIntoConstraints = NO;
    self.linkedinUser.translatesAutoresizingMaskIntoConstraints = NO;
    self.facebookMutual.translatesAutoresizingMaskIntoConstraints = NO;
    self.instagramMutual.translatesAutoresizingMaskIntoConstraints = NO;
    self.settingsView.translatesAutoresizingMaskIntoConstraints = NO;
    self.avatarView.translatesAutoresizingMaskIntoConstraints = NO;
    self.feedView.translatesAutoresizingMaskIntoConstraints = NO;
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    self.txtField.translatesAutoresizingMaskIntoConstraints = NO;
    self.btnAdd.translatesAutoresizingMaskIntoConstraints = NO;
    self.btnDelete.translatesAutoresizingMaskIntoConstraints = NO;

    
    self.profileView.image = [UIImage imageNamed:@"profile3.jpg"];
    self.facebookView.image = [UIImage imageNamed:@"facebook.png"];
    self.instagramView.image = [UIImage imageNamed:@"instagram3.jpg"];
    self.snapchatView.image = [UIImage imageNamed:@"snapchat.png"];
    self.twitterView.image = [UIImage imageNamed:@"twitter.png"];
    self.linkedinView.image = [UIImage imageNamed:@"linkedin.png"];
    self.settingsView.image = [UIImage imageNamed:@"settings.png"];
    self.avatarView.image = [UIImage imageNamed:@"avatar.png"];
    self.feedView.image = [UIImage imageNamed:@"feed.jpeg"];
    
    self.nameView.text = @"Andrew Takao";
    self.connectNumberView.text = @"20";
    self.connectView.text = @"Connects";
    self.friendNumberView.text = @"10";
    self.friendView.text = @"Friends";
    self.seeMore.text = @"See More";
    self.facebookUser.text = @"takaoandrew";
    self.instagramUser.text = @"andrewtakao";
    self.snapchatUser.text = @"chocotaco";
    self.twitterUser.text = @"tweetakao";
    self.linkedinUser.text = @"Andrew Takao";
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
    
    UITapGestureRecognizer *seemoreTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(seemoreTapped)];
    seemoreTap.numberOfTapsRequired = 1;
    [_seeMore setUserInteractionEnabled:YES];
    [_seeMore addGestureRecognizer:seemoreTap];
    
    UITapGestureRecognizer *snapchatTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(snapchatTapped)];
    snapchatTap.numberOfTapsRequired = 1;
    [_snapchatView setUserInteractionEnabled:YES];
    [_snapchatView addGestureRecognizer:snapchatTap];
    
    UITapGestureRecognizer *twitterTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(twitterTapped)];
    twitterTap.numberOfTapsRequired = 1;
    [_twitterView setUserInteractionEnabled:YES];
    [_twitterView addGestureRecognizer:twitterTap];
    
    UITapGestureRecognizer *linkedinTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(linkedinTapped)];
    linkedinTap.numberOfTapsRequired = 1;
    [_linkedinView setUserInteractionEnabled:YES];
    [_linkedinView addGestureRecognizer:linkedinTap];
    
    UITapGestureRecognizer *settingsTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(settingsTapped)];
    settingsTap.numberOfTapsRequired = 1;
    [_settingsView setUserInteractionEnabled:YES];
    [_settingsView addGestureRecognizer:settingsTap];
    
    UITapGestureRecognizer *feedTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(feedTapped)];
    feedTap.numberOfTapsRequired = 1;
    [_feedView setUserInteractionEnabled:YES];
    [_feedView addGestureRecognizer:feedTap];
    
    UITapGestureRecognizer *addTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(addTapped)];
    feedTap.numberOfTapsRequired = 1;
    [_btnAdd setUserInteractionEnabled:YES];
    [_btnAdd addGestureRecognizer:addTap];
    
    [self addBorder:self.seeMore toEdge:UIRectEdgeAll withColor:[UIColor blackColor] withThickness:2];
    
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
    
    
    [self.btnAdd
     setTitle: @"Send"
     forState: UIControlStateNormal];
    
    [self.btnAdd
     setTitleColor: self.view.tintColor
     forState: UIControlStateNormal];
    

    
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
                       @"seemore"       : self.seeMore,
                       @"facebookimg"   : self.facebookView,
                       @"instagramimg"  : self.instagramView,
                       @"snapchatimg"   : self.snapchatView,
                       @"twitterimg"    : self.twitterView,
                       @"linkedinimg"   : self.linkedinView,
                       @"facebookusr"   : self.facebookUser,
                       @"instagramusr"  : self.instagramUser,
                       @"snapchatusr"   : self.snapchatUser,
                       @"twitterusr"    : self.twitterUser,
                       @"linkedinusr"   : self.linkedinUser,
                       @"facebookmut"   : self.facebookMutual,
                       @"instagrammut"  : self.instagramMutual,
                       @"settings"      : self.settingsView,
                       @"avatar"        : self.avatarView,
                       @"feed"          : self.feedView,
                       
                       @"add"           : self.btnAdd,
//                       @"delete"        : self.btnDelete,
                       @"textfield"     : self.txtField,
                       @"tableview"     : self.tableView
                       };
    
    
    [self addLayout:@"V:|-20-[settings(30)]"];
    [self addLayout:@"V:|-20-[avatar(30)]"];
    [self addLayout:@"V:|-20-[feed(30)]"];
    [self addLayout:@"H:|-[settings(30)]-125-[avatar(30)]-125-[feed(30)]-|"];
    
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
    [self addLayout:@"V:|-360-[seemore(40)]"];
    [self addLayout:@"H:|-100-[seemore(100)]-40-|"];
    
//    [self addLayout:@"V:|-360-[snapchatimg(40)]"];
//    [self addLayout:@"V:|-370-[snapchatusr]"];
//    [self addLayout:@"H:|-20-[snapchatimg(40)]-30-[snapchatusr]-60-|"];
//    [self addLayout:@"V:|-410-[twitterimg(40)]"];
//    [self addLayout:@"V:|-420-[twitterusr]"];
//    [self addLayout:@"H:|-20-[twitterimg(40)]-30-[twitterusr]-60-|"];
//    [self addLayout:@"V:|-460-[linkedinimg(40)]"];
//    [self addLayout:@"V:|-470-[linkedinusr]"];
//    [self addLayout:@"H:|-20-[linkedinimg(40)]-30-[linkedinusr]-60-|"];
    
    
    [self addLayout:@"V:|-620-[textfield(40)]"];
    [self addLayout:@"V:|-410-[tableview(200)]"];
    CGFloat basicwidth = width-45;
    NSLog(@"%f", basicwidth);
    [self addLayout:[NSString stringWithFormat:@"H:|-[tableview(%f)]-|",basicwidth]];
    [self addLayout:@"V:|-620-[add]"];
    [self addLayout:@"H:|-20-[textfield(280)]-10-[add]-|"];
    
}

-(void)seemoreTapped {
    [self.seeMore removeFromSuperview];
    [self.view addSubview:self.snapchatView];
    [self.view addSubview:self.twitterView];
    [self.view addSubview:self.linkedinView];
    [self.view addSubview:self.snapchatUser];
    [self.view addSubview:self.twitterUser];
    [self.view addSubview:self.linkedinUser];
    [self addLayout:@"V:|-360-[snapchatimg(40)]"];
    [self addLayout:@"V:|-370-[snapchatusr]"];
    [self addLayout:@"H:|-20-[snapchatimg(40)]-30-[snapchatusr]-60-|"];
    [self addLayout:@"V:|-410-[twitterimg(40)]"];
    [self addLayout:@"V:|-420-[twitterusr]"];
    [self addLayout:@"H:|-20-[twitterimg(40)]-30-[twitterusr]-60-|"];
    [self addLayout:@"V:|-460-[linkedinimg(40)]"];
    [self addLayout:@"V:|-470-[linkedinusr]"];
    [self addLayout:@"H:|-20-[linkedinimg(40)]-30-[linkedinusr]-60-|"];
    [self.tableView removeFromSuperview];
    [self.view addSubview:self.tableView];
    [self addLayout:@"V:|-510-[tableview(100)]"];
    [self addLayout:[NSString stringWithFormat:@"H:|-[tableview(350)]-|"]];
    
    
    
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
            [[UIApplication sharedApplication] openURL:facebookURL options:@{} completionHandler:nil];
        } else {
            NSLog(@"didn't work");
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://facebook.com"] options:@{} completionHandler:nil];
        }
    }
    else {
        NSLog(@"Not installed");
        [self openScheme:@"http://www.facebook.com/661299413"];
    }
}

-(void)instagramTapped{
    BOOL instagramInstalled = [self schemeAvailable:@"instagram://"];
    if (instagramInstalled) {
        NSLog(@"Installed");
        NSURL *instagramURL = [NSURL URLWithString:@"instagram://user?username=chocotako1"];
        if ([[UIApplication sharedApplication] canOpenURL:instagramURL]) {
            [[UIApplication sharedApplication] openURL:instagramURL options:@{} completionHandler:nil];
        } else {
            NSLog(@"didn't work");
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://instagram.com"] options:@{} completionHandler:nil];
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
            [[UIApplication sharedApplication] openURL:snapchatURL options:@{} completionHandler:nil];
        } else {
            NSLog(@"didn't work");
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://snapchat.com"] options:@{} completionHandler:nil];
        }
    }
    else {
        NSLog(@"Not installed");
        [self openScheme:@"http://www.snapchat.com/add/chocotako"];
    }
}

-(void)twitterTapped{
    BOOL twitterInstalled = [self schemeAvailable:@"twitter://"];
    if (twitterInstalled) {
        NSLog(@"Installed");
        NSURL *twitterURL = [NSURL URLWithString:@"twitter://twitterusrnamehere"];
        if ([[UIApplication sharedApplication] canOpenURL:twitterURL]) {
            [[UIApplication sharedApplication] openURL:twitterURL options:@{} completionHandler:nil];
        } else {
            NSLog(@"didn't work");
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://twitter.com"] options:@{} completionHandler:nil];
        }
    }
    else {
        NSLog(@"Not installed");
        [self openScheme:@"http://www.twitter.com/"];
    }
}

-(void)linkedinTapped{
    BOOL linkedinInstalled = [self schemeAvailable:@"linkedin://"];
    if (linkedinInstalled) {
        NSLog(@"Installed");
        NSURL *linkedinURL = [NSURL URLWithString:@"linkedin://add/andrew-takao"];
        if ([[UIApplication sharedApplication] canOpenURL:linkedinURL]) {
            [[UIApplication sharedApplication] openURL:linkedinURL options:@{} completionHandler:nil];
        } else {
            NSLog(@"Bad URL");
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://linkedin.com"] options:@{} completionHandler:nil];
        }
    }
    else {
        NSLog(@"Not installed");
        [self openScheme:@"http://www.linkedin.com/in/andrew-takao-93375b92"];
    }
}

-(void)profileTapped{
    CustomIOSAlertView *alertView = [[CustomIOSAlertView alloc] init];
    UIImageView *customView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 10, 400, 600)];
    UIImage *profileImage = [UIImage imageNamed:@"profile3.jpg"];
    [customView setImage:profileImage];
    
    [alertView setContainerView:customView];
    [alertView show];
    
}

-(void)contactTapped{
    
    NSString *contactmessage = @"takaoandrew@gmail.com\r631-398-9782";
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:nil
                                 message:contactmessage
                                 preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* close = [UIAlertAction
                                actionWithTitle:@"Close"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                }];
    [alert addAction:close];
    [self presentViewController:alert animated:YES completion:nil];
    NSLog(@"single Tap on imageview");
}

-(void)echoTapped{
    NSString *message = @"Coming Soon...";
    UIAlertController *alert = [UIAlertController
                                alertControllerWithTitle:nil
                                message:message
                                preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:nil];
    int duration = 1; // duration in seconds
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [self dismissViewControllerAnimated:YES completion:nil];
    });
    NSLog(@"single Tap on imageview");
}

-(void)settingsTapped{
    NSString *message = @"Coming Soon...";
    UIAlertController *alert = [UIAlertController
                                alertControllerWithTitle:nil
                                message:message
                                preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:nil];
    int duration = 1;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [self dismissViewControllerAnimated:YES completion:nil];
    });

}

-(void)feedTapped{
    NSString *message = @"Coming Soon...";
    UIAlertController *alert = [UIAlertController
                                alertControllerWithTitle:nil
                                message:message
                                preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:nil];
    int duration = 1; // duration in seconds
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [self dismissViewControllerAnimated:YES completion:nil];
    });
    
}

-(void)addTapped{
//    NSLog(@"Count = ");
//    NSLog(@"%lu", arrayData.count);
    [arrayData addObject:self.txtField.text];
    [self.tableView reloadData];
    self.txtField.text = @"";
    if (arrayData.count > 0)
        [self.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:arrayData.count-1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:YES];}

-(void)viewDidLoad
{
    
    
    NSLog(@"The view loaded!");
}

@end
