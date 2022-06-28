//
//     ██████╗░███████╗░█████╗░░█████╗░██████╗░██████╗░        Simple way to customize your Card
//     ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
//     ██║░░██║█████╗░░██║░░╚═╝███████║██████╔╝██║░░██║                  ViewController.h
//     ██║░░██║██╔══╝░░██║░░██╗██╔══██║██╔══██╗██║░░██║        ***The main programm file header***
//     ██████╔╝███████╗╚█████╔╝██║░░██║██║░░██║██████╔╝
//     ╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░                    Created by AppleWorm on 09.03.2022.
//
//  *PATENTED! Any use of this file for commercial purposes is prohibited. All rights reserved.

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
UIAlertViewDelegate,
UINavigationControllerDelegate,
UIImagePickerControllerDelegate
>

// download card Pattern
- (IBAction)downloadPattern:(id)sender;

// blur
@property (weak, nonatomic) IBOutlet UIVisualEffectView *mainBlur;


// load own card
@property (nonatomic, retain) UIImagePickerController *cardImageController;
@property (strong, nonatomic) IBOutlet UIImageView *loadedCard;

-(IBAction)loadCardButton:(id)sender;

// buttons
@property (nonatomic, retain) IBOutlet UIButton *chooseImageButton;
@property (nonatomic, retain) IBOutlet UIButton *confirmButton;
@property (nonatomic, retain) IBOutlet UIButton *cleanCacheButton;
@property (weak, nonatomic) IBOutlet UIButton *fafnierButton;

// sroll view
@property (strong, nonatomic) IBOutlet UIScrollView *scrollerMain;
@property(nonatomic, readonly) BOOL shouldAutorotate;

// functions
-(IBAction)chooseImageButton_clicked:(id)sender;
-(IBAction)confirmButton_clicked:(id)sender;
-(IBAction)cleanCacheButton_clicked:(id)sender;

@end
