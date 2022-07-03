//
//     ██████╗░███████╗░█████╗░░█████╗░██████╗░██████╗░        Simple way to customize your Card
//     ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
//     ██║░░██║█████╗░░██║░░╚═╝███████║██████╔╝██║░░██║               CardViewController.h
//     ██║░░██║██╔══╝░░██║░░██╗██╔══██║██╔══██╗██║░░██║           ***Cards page file header***
//     ██████╔╝███████╗╚█████╔╝██║░░██║██║░░██║██████╔╝
//     ╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░                    Created by AppleWorm on 09.03.2022.
//
//  *PATENTED! Any use of this file for commercial purposes is prohibited. All rights reserved.

#import <UIKit/UIKit.h>


@interface CardViewController : UIViewController <UIScrollViewDelegate>

// this is an important var that save a name of chosen card)
extern NSString *cardName;

// ready cards (All new cards will be add here)
@property (nonatomic, retain) IBOutlet UIButton *ruiTachibana;
@property (nonatomic, retain) IBOutlet UIButton *suzuya;
@property (nonatomic, retain) IBOutlet UIButton *ShuTsukiyama;
@property (nonatomic, retain) IBOutlet UIButton *catGirl;
@property (nonatomic, retain) IBOutlet UIButton *hinami;

// ready cards images OL
@property (weak, nonatomic) IBOutlet UIImageView *shuImage;
@property (weak, nonatomic) IBOutlet UIImageView *suzuyaImage;
@property (weak, nonatomic) IBOutlet UIImageView *catGirlImage;
@property (weak, nonatomic) IBOutlet UIImageView *hinamiImage;
@property (weak, nonatomic) IBOutlet UIImageView *ruiImage;

// scrollView init
@property (strong, nonatomic) IBOutlet UIScrollView *cardScroller;

// ready card setters
-(IBAction)ruiTachibana_choiced:(id)sender;
-(IBAction)suzuya_choiced:(id)sender;
-(IBAction)catGirl_choiced:(id)sender;
-(IBAction)ShuTsukiyama_choiced:(id)sender;
-(IBAction)hinami_choiced:(id)sender;

// Coming soon lable
@property (nonatomic, retain) IBOutlet UILabel *comingSoonLabel;

// blur
@property (weak, nonatomic) IBOutlet UIVisualEffectView *cardBlur;

@end
