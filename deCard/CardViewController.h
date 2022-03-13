//
//     ██████╗░███████╗░█████╗░░█████╗░██████╗░██████╗░        Simple way to customize your Card
//     ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
//     ██║░░██║█████╗░░██║░░╚═╝███████║██████╔╝██║░░██║               CardViewController.h
//     ██║░░██║██╔══╝░░██║░░██╗██╔══██║██╔══██╗██║░░██║           ***Cards page file header***
//     ██████╔╝███████╗╚█████╔╝██║░░██║██║░░██║██████╔╝
//     ╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░                    Created by IH8Jam on 09.03.2022.
//
//  *PATENTED! Any use of this file for commercial purposes is prohibited. All rights reserved.

#import <UIKit/UIKit.h>


@interface CardViewController : UIViewController

// this is an important var that save a name of chosen card)
extern NSString *cardName;

// ready cards (All new cards will be add here)
@property (nonatomic, retain) IBOutlet UIButton *ruiTachibana;
@property (nonatomic, retain) IBOutlet UIButton *suzuya;
@property (nonatomic, retain) IBOutlet UIButton *ShuTsukiyama;
@property (nonatomic, retain) IBOutlet UIButton *catGirl;
@property (nonatomic, retain) IBOutlet UIButton *hinami;

// scrollView init
@property (strong, nonatomic) IBOutlet UIScrollView *cardScroller;

// ready card setters
-(IBAction)ruiTachibana_choiced:(id)sender;
-(IBAction)suzuya_choiced:(id)sender;
-(IBAction)catGirl_choiced:(id)sender;
-(IBAction)ShuTsukiyama_choiced:(id)sender;
-(IBAction)hinami_choiced:(id)sender;

// back button)
- (IBAction)backButton:(id)sender;

@end

