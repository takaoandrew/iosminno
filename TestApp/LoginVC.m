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
//#import "ContentView.h"
//#import "ChatTableViewCell.h"
#import "ChatTableViewCellXIB.h"
#import "ChatCellSettings.h"



//@interface iMessage: NSObject
//
//-(id) initIMessageWithName:(NSString *)name
//                   message:(NSString *)message
//                      time:(NSString *)time
//                      type:(NSString *)type;
//
//@property (strong, nonatomic) NSString *userName;
//@property (strong, nonatomic) NSString *userMessage;
//@property (strong, nonatomic) NSString *userTime;
//@property (strong, nonatomic) NSString *messageType;
//
//@end
//
//@implementation iMessage
//
//-(id) initIMessageWithName:(NSString *)name
//                   message:(NSString *)message
//                      time:(NSString *)time
//                      type:(NSString *)type
//{
//    self = [super init];
//    if(self)
//    {
//        self.userName = name;
//        self.userMessage = message;
//        self.userTime = time;
//        self.messageType = type;
//    }
//    
//    return self;
//}
//
//@end
//
@implementation LoginViewController
//
//{
//    NSMutableArray *currentMessages;
//    ChatCellSettings *chatCellSettings;
//}
//@synthesize chatCell;
//
//- (void)viewDidLoad {
//    NSLog(@"The view loaded!");
//    [super viewDidLoad];
//    
//    currentMessages = [[NSMutableArray alloc] init];
//    chatCellSettings = [ChatCellSettings getInstance];
//    
//    /**
//     *  Set settings for Application. They are available in ChatCellSettings class.
//     */
//    
//    //[chatCellSettings setSenderBubbleColor:[UIColor colorWithRed:0 green:(122.0f/255.0f) blue:1.0f alpha:1.0f]];
//    //[chatCellSettings setReceiverBubbleColor:[UIColor colorWithRed:(223.0f/255.0f) green:(222.0f/255.0f) blue:(229.0f/255.0f) alpha:1.0f]];
//    //[chatCellSettings setSenderBubbleNameTextColor:[UIColor colorWithRed:(255.0f/255.0f) green:(255.0f/255.0f) blue:(255.0f/255.0f) alpha:1.0f]];
//    //[chatCellSettings setReceiverBubbleNameTextColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:1.0f]];
//    //[chatCellSettings setSenderBubbleMessageTextColor:[UIColor colorWithRed:(255.0f/255.0f) green:(255.0f/255.0f) blue:(255.0f/255.0f) alpha:1.0f]];
//    //[chatCellSettings setReceiverBubbleMessageTextColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:1.0f]];
//    //[chatCellSettings setSenderBubbleTimeTextColor:[UIColor colorWithRed:(255.0f/255.0f) green:(255.0f/255.0f) blue:(255.0f/255.0f) alpha:1.0f]];
//    //[chatCellSettings setReceiverBubbleTimeTextColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:1.0f]];
//    
//    [chatCellSettings setSenderBubbleColorHex:@"007AFF"];
//    [chatCellSettings setReceiverBubbleColorHex:@"DFDEE5"];
//    [chatCellSettings setSenderBubbleNameTextColorHex:@"FFFFFF"];
//    [chatCellSettings setReceiverBubbleNameTextColorHex:@"000000"];
//    [chatCellSettings setSenderBubbleMessageTextColorHex:@"FFFFFF"];
//    [chatCellSettings setReceiverBubbleMessageTextColorHex:@"000000"];
//    [chatCellSettings setSenderBubbleTimeTextColorHex:@"FFFFFF"];
//    [chatCellSettings setReceiverBubbleTimeTextColorHex:@"000000"];
//    
//    [chatCellSettings setSenderBubbleFontWithSizeForName:[UIFont boldSystemFontOfSize:11]];
//    [chatCellSettings setReceiverBubbleFontWithSizeForName:[UIFont boldSystemFontOfSize:11]];
//    [chatCellSettings setSenderBubbleFontWithSizeForMessage:[UIFont systemFontOfSize:14]];
//    [chatCellSettings setReceiverBubbleFontWithSizeForMessage:[UIFont systemFontOfSize:14]];
//    [chatCellSettings setSenderBubbleFontWithSizeForTime:[UIFont systemFontOfSize:11]];
//    [chatCellSettings setReceiverBubbleFontWithSizeForTime:[UIFont systemFontOfSize:11]];
//    
//    [chatCellSettings senderBubbleTailRequired:YES];
//    [chatCellSettings receiverBubbleTailRequired:YES];
//    
//    self.navigationItem.title = @"iMessageBubble Demo";
//    
//    [[self chatTable] setSeparatorStyle:UITableViewCellSeparatorStyleNone];
//    
//    
//    
//    
//    
//    
//    /*Uncomment second para and comment first to use XIB instead of code*/
//    //Registering custom Chat table view cell for both sending and receiving
//    [[self chatTable] registerClass:[ChatTableViewCell class] forCellReuseIdentifier:@"chatSend"];
//    
//    [[self chatTable] registerClass:[ChatTableViewCell class] forCellReuseIdentifier:@"chatReceive"];
//    
//    
//    /*UINib *nib = [UINib nibWithNibName:@"ChatSendCell" bundle:nil];
//     
//     [[self chatTable] registerNib:nib forCellReuseIdentifier:@"chatSend"];
//     
//     nib = [UINib nibWithNibName:@"ChatReceiveCell" bundle:nil];
//     
//     [[self chatTable] registerNib:nib forCellReuseIdentifier:@"chatReceive"];*/
//    
//    
//    
//    
//    
//    
//    //Instantiating custom view that adjusts itself to keyboard show/hide
//    self.handler = [[ContentView alloc] initWithTextView:self.chatTextView ChatTextViewHeightConstraint:self.chatTextViewHeightConstraint contentView:self.contentView ContentViewHeightConstraint:self.contentViewHeightConstraint andContentViewBottomConstraint:self.contentViewBottomConstraint];
//    
//    //Setting the minimum and maximum number of lines for the textview vertical expansion
//    [self.handler updateMinimumNumberOfLines:1 andMaximumNumberOfLine:3];
//    
//    //Tap gesture on table view so that when someone taps on it, the keyboard is hidden
//    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
//    
//    [self.chatTable addGestureRecognizer:gestureRecognizer];
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//- (void) dismissKeyboard
//{
//    [self.chatTextView resignFirstResponder];
//}
//
//- (IBAction)sendMessage:(id)sender
//{
//    if([self.chatTextView.text length]!=0)
//    {
//        iMessage *sendMessage;
//        
//        sendMessage = [[iMessage alloc] initIMessageWithName:@"Prateek Grover" message:self.chatTextView.text time:@"23:14" type:@"self"];
//        
//        [self updateTableView:sendMessage];
//    }
//}
//
//- (IBAction)receiveMessage:(id)sender
//{
//    if([self.chatTextView.text length]!=0)
//    {
//        iMessage *receiveMessage;
//        
//        receiveMessage = [[iMessage alloc] initIMessageWithName:@"Prateek Grover" message:self.chatTextView.text time:@"23:14" type:@"other"];
//        
//        [self updateTableView:receiveMessage];
//    }
//}
//
//-(void) updateTableView:(iMessage *)msg
//{
//    [self.chatTextView setText:@""];
//    [self.handler textViewDidChange:self.chatTextView];
//    
//    [self.chatTable beginUpdates];
//    
//    NSIndexPath *row1 = [NSIndexPath indexPathForRow:currentMessages.count inSection:0];
//    
//    [currentMessages insertObject:msg atIndex:currentMessages.count];
//    
//    [self.chatTable insertRowsAtIndexPaths:[NSArray arrayWithObjects:row1, nil] withRowAnimation:UITableViewRowAnimationBottom];
//    
//    [self.chatTable endUpdates];
//    
//    //Always scroll the chat table when the user sends the message
//    if([self.chatTable numberOfRowsInSection:0]!=0)
//    {
//        NSIndexPath* ip = [NSIndexPath indexPathForRow:[self.chatTable numberOfRowsInSection:0]-1 inSection:0];
//        [self.chatTable scrollToRowAtIndexPath:ip atScrollPosition:UITableViewScrollPositionBottom animated:UITableViewRowAnimationLeft];
//    }
//}
//
//
//
//#pragma mark - UITableViewDatasource methods
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return currentMessages.count;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    iMessage *message = [currentMessages objectAtIndex:indexPath.row];
//    
//    if([message.messageType isEqualToString:@"self"])
//    {
//        /*Uncomment second line and comment first to use XIB instead of code*/
//        chatCell = (ChatTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"chatSend"];
//        //chatCell = (ChatTableViewCellXIB *)[tableView dequeueReusableCellWithIdentifier:@"chatSend"];
//        
//        chatCell.chatMessageLabel.text = message.userMessage;
//        
//        chatCell.chatNameLabel.text = message.userName;
//        
//        chatCell.chatTimeLabel.text = message.userTime;
//        
//        chatCell.chatUserImage.image = [UIImage imageNamed:@"defaultUser"];
//        
//        /*Comment this line is you are using XIB*/
//        chatCell.authorType = iMessageBubbleTableViewCellAuthorTypeSender;
//    }
//    else
//    {
//        /*Uncomment second line and comment first to use XIB instead of code*/
//        chatCell = (ChatTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"chatReceive"];
//        //chatCell = (ChatTableViewCellXIB *)[tableView dequeueReusableCellWithIdentifier:@"chatReceive"];
//        
//        chatCell.chatMessageLabel.text = message.userMessage;
//        
//        chatCell.chatNameLabel.text = message.userName;
//        
//        chatCell.chatTimeLabel.text = message.userTime;
//        
//        chatCell.chatUserImage.image = [UIImage imageNamed:@"defaultUser"];
//        
//        /*Comment this line is you are using XIB*/
//        chatCell.authorType = iMessageBubbleTableViewCellAuthorTypeReceiver;
//    }
//    
//    return chatCell;
//    
//}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    iMessage *message = [currentMessages objectAtIndex:indexPath.row];
//    
//    CGSize size;
//    
//    CGSize Namesize;
//    CGSize Timesize;
//    CGSize Messagesize;
//    
//    NSArray *fontArray = [[NSArray alloc] init];
//    
//    //Get the chal cell font settings. This is to correctly find out the height of each of the cell according to the text written in those cells which change according to their fonts and sizes.
//    //If you want to keep the same font sizes for both sender and receiver cells then remove this code and manually enter the font name with size in Namesize, Messagesize and Timesize.
//    if([message.messageType isEqualToString:@"self"])
//    {
//        fontArray = chatCellSettings.getSenderBubbleFontWithSize;
//    }
//    else
//    {
//        fontArray = chatCellSettings.getReceiverBubbleFontWithSize;
//    }
//    
//    //Find the required cell height
//    Namesize = [@"Name" boundingRectWithSize:CGSizeMake(220.0f, CGFLOAT_MAX)
//                                     options:NSStringDrawingUsesLineFragmentOrigin
//                                  attributes:@{NSFontAttributeName:fontArray[0]}
//                                     context:nil].size;
//    
//    
//    
//    Messagesize = [message.userMessage boundingRectWithSize:CGSizeMake(220.0f, CGFLOAT_MAX)
//                                                    options:NSStringDrawingUsesLineFragmentOrigin
//                                                 attributes:@{NSFontAttributeName:fontArray[1]}
//                                                    context:nil].size;
//    
//    
//    Timesize = [@"Time" boundingRectWithSize:CGSizeMake(220.0f, CGFLOAT_MAX)
//                                     options:NSStringDrawingUsesLineFragmentOrigin
//                                  attributes:@{NSFontAttributeName:fontArray[2]}
//                                     context:nil].size;
//    
//    
//    size.height = Messagesize.height + Namesize.height + Timesize.height + 48.0f;
//    
//    return size.height;
//}

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
    
//    self.chatCell = [[ChatTableViewCell alloc] init];
    self.tableView = [[UITableView alloc] init];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"chatSend"];
    self.chatCell = (ChatTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:@"chatSend"];
    
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
    
    [self.view addSubview:self.chatCell];
    [self.view addSubview:self.tableView];
    
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
                       @"table"         : self.tableView,
                       @"chatbubble"    : self.chatCell
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
    self.chatCell.translatesAutoresizingMaskIntoConstraints = NO;

    
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
    self.facebookUser.text = @"takaoandrew";
    self.instagramUser.text = @"andrewtakao";
    self.snapchatUser.text = @"chocotaco";
    self.twitterUser.text = @"tweetakao";
    self.linkedinUser.text = @"Andrew Takao";
    self.facebookMutual.text = @"10 Mutual";
    self.instagramMutual.text = @"12 Mutual";
    
    
//    self.testLabel = [[UILabel alloc] init];
//    self.chatCell.chatNameLabel = self.testLabel;
    
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

    
    [self addLayout:@"V:|-20-[settings(30)]"];
    [self addLayout:@"V:|-20-[avatar(30)]"];
    [self addLayout:@"V:|-20-[feed(30)]"];
    //    [self addLayout:@"H:|-[settings(30)]-125-[avatar(30)]-125-[feed(30)]-|"];
    [self addLayout:@"H:|-[settings(30)]->=50-[avatar(30)]-[feed(30)]-|"];
    
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
//    [self addLayout:@"V:|-360-[snapchatimg(40)]"];
//    [self addLayout:@"V:|-370-[snapchatusr]"];
//    [self addLayout:@"H:|-20-[snapchatimg(40)]-30-[snapchatusr]-60-|"];
//    [self addLayout:@"V:|-410-[twitterimg(40)]"];
//    [self addLayout:@"V:|-420-[twitterusr]"];
//    [self addLayout:@"H:|-20-[twitterimg(40)]-30-[twitterusr]-60-|"];
//    [self addLayout:@"V:|-460-[linkedinimg(40)]"];
//    [self addLayout:@"V:|-470-[linkedinusr]"];
//    [self addLayout:@"H:|-20-[linkedinimg(40)]-30-[linkedinusr]-60-|"];
    
    
//    self.tableView = [[UITableView alloc] init];
//    ChatTableViewCell *chatCell
//    self.chatCell = [[ChatTableViewCell alloc] init];
//    [self.view addSubview:self.chatCell];
    
//    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
//    self.chatCell.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self addLayout:@"V:|-470-[table]"];
    [self addLayout:@"H:|-20-[table]-30-|"];
    [self addLayout:@"V:|-470-[chatbubble]"];
    [self addLayout:@"H:|-20-[chatbubble]-30-|"];
//    [self.view addSubview:self.tableView];
    
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

-(void)twitterTapped{
    BOOL twitterInstalled = [self schemeAvailable:@"twitter://"];
    if (twitterInstalled) {
        NSLog(@"Installed");
        NSURL *twitterURL = [NSURL URLWithString:@"twitter://twitterusrnamehere"];
        if ([[UIApplication sharedApplication] canOpenURL:twitterURL]) {
            [[UIApplication sharedApplication] openURL:twitterURL];
        } else {
            NSLog(@"didn't work");
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://twitter.com"]];
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
            [[UIApplication sharedApplication] openURL:linkedinURL];
        } else {
            NSLog(@"Bad URL");
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://linkedin.com"]];
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

-(void)settingsTapped{
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

-(void)feedTapped{
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

@end


