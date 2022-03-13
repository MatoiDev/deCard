//
//     ██████╗░███████╗░█████╗░░█████╗░██████╗░██████╗░        Simple way to customize your Card
//     ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
//     ██║░░██║█████╗░░██║░░╚═╝███████║██████╔╝██║░░██║              CardViewController.h
//     ██║░░██║██╔══╝░░██║░░██╗██╔══██║██╔══██╗██║░░██║              ***Cards page file***
//     ██████╔╝███████╗╚█████╔╝██║░░██║██║░░██║██████╔╝
//     ╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░                    Created by IH8Jam on 09.03.2022.
//
//  *PATENTED! Any use of this file for commercial purposes is prohibited. All rights reserved.

#import "CardViewController.h"

@interface CardViewController ()

@end

@implementation CardViewController

@synthesize cardScroller, ruiTachibana, ShuTsukiyama, catGirl, suzuya;

NSString *cardName = nil;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [cardScroller setScrollEnabled:TRUE];
    [cardScroller setContentSize:CGSizeMake(375, 5000)];
    
}

-(IBAction)ruiTachibana_choiced:(id)sender {
    cardName = @"rui";
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)suzuya_choiced:(id)sender {
    cardName = @"suzuya";
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)ShuTsukiyama_choiced:(id)sender {
    cardName = @"shu";
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)catGirl_choiced:(id)sender {
    cardName = @"catGirl";
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)hinami_choiced:(id)sender {
    cardName = @"hinami";
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)backButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
