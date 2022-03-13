//
//     ██████╗░███████╗░█████╗░░█████╗░██████╗░██████╗░         Simple way to customize your Card
//     ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
//     ██║░░██║█████╗░░██║░░╚═╝███████║██████╔╝██║░░██║               CreditViewController.m
//     ██║░░██║██╔══╝░░██║░░██╗██╔══██║██╔══██╗██║░░██║               ***Cedits page file***
//     ██████╔╝███████╗╚█████╔╝██║░░██║██║░░██║██████╔╝
//     ╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░                     Created by IH8Jam on 09.03.2022.
//
//  *PATENTED! Any use of this file for commercial purposes is prohibited. All rights reserved.

#import "CreditViewController.h"

@interface CreditViewController ()

@end

@implementation CreditViewController

-(IBAction)goGitHub:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/IH8Jam?tab=repositories"] options:@{} completionHandler:nil];
}

-(IBAction)goTelegram:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://t.me/Uncle_Milty"] options:@{} completionHandler:nil];
}

-(IBAction) goVK:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://vk.com/f4ther_of_all"] options:@{} completionHandler:nil];
}
@end
