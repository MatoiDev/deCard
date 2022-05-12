//
//     ██████╗░███████╗░█████╗░░█████╗░██████╗░██████╗░         Simple way to customize your Card
//     ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
//     ██║░░██║█████╗░░██║░░╚═╝███████║██████╔╝██║░░██║               CreditViewController.h
//     ██║░░██║██╔══╝░░██║░░██╗██╔══██║██╔══██╗██║░░██║            ***Cedits page file header***
//     ██████╔╝███████╗╚█████╔╝██║░░██║██║░░██║██████╔╝
//     ╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░                     Created by IH8Jam on 09.03.2022.
//
//  *PATENTED! Any use of this file for commercial purposes is prohibited. All rights reserved.

#import <UIKit/UIKit.h>


@interface CreditViewController : UIViewController

// resources
@property (nonatomic, retain) IBOutlet UIButton * gitHubButton;
@property (nonatomic, retain) IBOutlet UIButton * telegramButton;
@property (nonatomic, retain) IBOutlet UIButton * vkButton;


// go URLs
-(IBAction)goGitHub:(id)sender;
-(IBAction)goTelegram:(id)sender;
-(IBAction)goVK:(id)sender;



@end
