//
//     ██████╗░███████╗░█████╗░░█████╗░██████╗░██████╗░        Simple way to customize your Card
//     ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
//     ██║░░██║█████╗░░██║░░╚═╝███████║██████╔╝██║░░██║              CardViewController.m
//     ██║░░██║██╔══╝░░██║░░██╗██╔══██║██╔══██╗██║░░██║              ***Cards page file***
//     ██████╔╝███████╗╚█████╔╝██║░░██║██║░░██║██████╔╝
//     ╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░                    Created by AppleWorm on 09.03.2022.
//
//  *PATENTED! Any use of this file for commercial purposes is prohibited. All rights reserved.

#import "CardViewController.h"

@interface CardViewController ()

@end

@implementation CardViewController

@synthesize cardScroller, ruiTachibana, ShuTsukiyama, catGirl, suzuya, comingSoonLabel, cardBlur;

NSString *cardName = nil;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    cardScroller.delegate = self;
    [cardScroller setScrollEnabled:TRUE];
    [cardScroller setContentSize:CGSizeMake(375, 5000)];
}

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [cardBlur setAlpha:1];
    [comingSoonLabel setAlpha:0];
    
    [UIView animateWithDuration:0.4 animations:^{
        [[self cardBlur] setAlpha:0];
    } completion:nil];
}

- (void) viewWillDisappear:(BOOL)animated {
    [UIView animateWithDuration:0.2 animations:^{
            self.navigationController.navigationBar.hidden = YES;
            [[self cardBlur] setAlpha:1];
    }];
}

-(IBAction)ruiTachibana_choiced:(id)sender {
    cardName = @"rui";
//    [UIView animateWithDuration:0.2 animations:^{
//        self.navigationController.navigationBar.hidden = YES;
//        [[self cardBlur] setAlpha:1];
//    } completion:nil];
    [[self navigationController] popViewControllerAnimated:true];
}

-(IBAction)suzuya_choiced:(id)sender {
    cardName = @"suzuya";
//    [UIView animateWithDuration:0.2 animations:^{
//        self.navigationController.navigationBar.hidden = YES;
//        [[self cardBlur] setAlpha:1];
//    } completion:nil];
    [[self navigationController] popViewControllerAnimated:true];
}

-(IBAction)ShuTsukiyama_choiced:(id)sender {
    cardName = @"shu";
//    [UIView animateWithDuration:0.2 animations:^{
//        self.navigationController.navigationBar.hidden = YES;
//        [[self cardBlur] setAlpha:1];
//    } completion:nil];
    [[self navigationController] popViewControllerAnimated:true];
}

-(IBAction)catGirl_choiced:(id)sender {
    cardName = @"catGirl";
//    [UIView animateWithDuration:0.2 animations:^{
//        self.navigationController.navigationBar.hidden = YES;
//        [[self cardBlur] setAlpha:1];
//    } completion:nil];
    [[self navigationController] popViewControllerAnimated:true];
}

-(IBAction)hinami_choiced:(id)sender {
    cardName = @"hinami";
//    [UIView animateWithDuration:0.2 animations:^{
//        self.navigationController.navigationBar.hidden = YES;
//        [[self cardBlur] setAlpha:1];
//    } completion:nil];
    [[self navigationController] popViewControllerAnimated:true];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    [self stoppedScrolling];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    if (!decelerate) {
        [self stoppedScrolling];
    }
}

- (void)stoppedScrolling {
    [UIView animateWithDuration:1 animations:^{
        [[self comingSoonLabel] setAlpha:1];
    } completion:nil];
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    [UIView animateWithDuration:0.2 animations:^{
        [[self comingSoonLabel] setAlpha:0];
    } completion:nil];
}



@end
