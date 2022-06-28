//
//     ██████╗░███████╗░█████╗░░█████╗░██████╗░██████╗░         Simple way to customize your Card
//     ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
//     ██║░░██║█████╗░░██║░░╚═╝███████║██████╔╝██║░░██║               CreditViewController.m
//     ██║░░██║██╔══╝░░██║░░██╗██╔══██║██╔══██╗██║░░██║               ***Cedits page file***
//     ██████╔╝███████╗╚█████╔╝██║░░██║██║░░██║██████╔╝
//     ╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░                     Created by AppleWorm on 09.03.2022.
//
//  *PATENTED! Any use of this file for commercial purposes is prohibited. All rights reserved.

#import "CreditViewController.h"

@interface CreditViewController ()

@end

@implementation CreditViewController

@synthesize creditBlur;

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [[self creditBlur] setAlpha:1];
    
    [UIView animateWithDuration:0.4 animations:^{
        [[self creditBlur] setAlpha:0];
    } completion:nil];
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [UIView animateWithDuration:0.2 animations:^{
        [[self creditBlur] setAlpha:1];
    } completion:nil];
}

-(IBAction)goGitHub:(id)sender {
    [UIView animateWithDuration:0.2 animations:^{
        [[self creditBlur] setAlpha:1];
    } completion:^(BOOL finished) {
        self.navigationController.navigationBar.hidden = true;
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/AppIeWorm"] options:@{} completionHandler:nil];
        [UIView animateWithDuration:1 animations:^{
            [[self creditBlur] setAlpha:0];
        } completion:nil];
    }];
    
}

-(IBAction)goTelegram:(id)sender{
    
    [UIView animateWithDuration:0.2 animations:^{
        [[self creditBlur] setAlpha:1];
    } completion:^(BOOL finished) {
        self.navigationController.navigationBar.hidden = true;
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://t.me/Uncle_Milty"] options:@{} completionHandler:nil];
        [UIView animateWithDuration:1 animations:^{
            [[self creditBlur] setAlpha:0];
        } completion:nil];
    }];
}

-(IBAction) goVK:(id)sender {
    [UIView animateWithDuration:0.2 animations:^{
        [[self creditBlur] setAlpha:1];
    } completion:^(BOOL finished) {
        self.navigationController.navigationBar.hidden = true;
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://vk.com/f4ther_of_all"] options:@{} completionHandler:nil];
        [UIView animateWithDuration:1 animations:^{
            [[self creditBlur] setAlpha:0];
        } completion:nil];
    }];
}

@end
