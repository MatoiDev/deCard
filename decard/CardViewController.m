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
#import <QuartzCore/QuartzCore.h>
#include <stdlib.h>

@interface CardViewController ()

@end

@implementation CardViewController

@synthesize cardScroller, ruiTachibana, ShuTsukiyama, catGirl, suzuya, comingSoonLabel, cardBlur;
@synthesize shuImage, suzuyaImage, catGirlImage, hinamiImage, ruiImage;

NSString *cardName = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[shuImage layer] setCornerRadius:15];
    [[suzuyaImage layer] setCornerRadius:15];
    [[catGirlImage layer] setCornerRadius:15];
    [[hinamiImage layer] setCornerRadius:15];
    [[ruiImage layer] setCornerRadius:15];
    
    [cardScroller setDelegate:self];
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
    [UIView animateWithDuration:0.2
                     animations:^{
        self.ruiImage.alpha = 0;
        int num = arc4random_uniform(3);
//        printf("%d", num);
        switch (num) {
        case 0:
            self.ruiImage.transform = CGAffineTransformMakeTranslation(400, 0);
                break;
        case 1:
            self.ruiImage.transform = CGAffineTransformMakeScale(0.0001, 0.0001);
                break;
        default:
            self.ruiImage.transform = CGAffineTransformMakeRotation(-3.14);
                break;
        }

    } completion:^(BOOL finished) {
        [[self navigationController] popViewControllerAnimated:true];
    }];
}

-(IBAction)suzuya_choiced:(id)sender {
    cardName = @"suzuya";
    [UIView animateWithDuration:0.2
                     animations:^{
        self.suzuyaImage.alpha = 0;
        int num = arc4random_uniform(3);
//        printf("%d", num);
        switch (num) {
        case 0:
            self.suzuyaImage.transform = CGAffineTransformMakeTranslation(400, 0);
                break;
        case 1:
            self.suzuyaImage.transform = CGAffineTransformMakeScale(0.0001, 0.0001);
                break;
        default:
            self.suzuyaImage.transform = CGAffineTransformMakeRotation(-3.14);
                break;
        }

    } completion:^(BOOL finished) {
        [[self navigationController] popViewControllerAnimated:true];
    }];
}

-(IBAction)ShuTsukiyama_choiced:(id)sender {
    cardName = @"shu";
    [UIView animateWithDuration:0.2
                     animations:^{
        self.shuImage.alpha = 0;
        int num = arc4random_uniform(3);
//        printf("%d", num);
        switch (num) {
        case 0:
            self.shuImage.transform = CGAffineTransformMakeTranslation(400, 0);
                break;
        case 1:
            self.shuImage.transform = CGAffineTransformMakeScale(0.0001, 0.0001);
                break;
        default:
            self.shuImage.transform = CGAffineTransformMakeRotation(-3.14);
                break;
        }

    } completion:^(BOOL finished) {
        [[self navigationController] popViewControllerAnimated:true];
    }];
}

-(IBAction)catGirl_choiced:(id)sender {
    cardName = @"catGirl";
    [UIView animateWithDuration:0.2
                     animations:^{
        self.catGirlImage.alpha = 0;
        int num = arc4random_uniform(3);
//        printf("%d", num);
        switch (num) {
        case 0:
            self.catGirlImage.transform = CGAffineTransformMakeTranslation(400, 0);
                break;
        case 1:
            self.catGirlImage.transform = CGAffineTransformMakeScale(0.0001, 0.0001);
                break;
        default:
            self.catGirlImage.transform = CGAffineTransformMakeRotation(-3.14);
                break;
        }

    } completion:^(BOOL finished) {
        [[self navigationController] popViewControllerAnimated:true];
    }];
}

-(IBAction)hinami_choiced:(id)sender {
    cardName = @"hinami";
    [UIView animateWithDuration:0.2
                     animations:^{
        self.hinamiImage.alpha = 0;
        int num = arc4random_uniform(3);
//        printf("%d", num);
        switch (num) {
        case 0:
            self.hinamiImage.transform = CGAffineTransformMakeTranslation(400, 0);
                break;
        case 1:
            self.hinamiImage.transform = CGAffineTransformMakeScale(0.0001, 0.0001);
                break;
        default:
            self.hinamiImage.transform = CGAffineTransformMakeRotation(-3.14);
                break;
        }

    } completion:^(BOOL finished) {
        [[self navigationController] popViewControllerAnimated:true];
    }];
}

//- (void)imageWillDisappear:(UIImageView *)image {
//    [UIView animateWithDuration:0.2
//                     animations:^{
//        image.alpha = 0;
//        int num = arc4random_uniform(3);
//        switch (num) {
//        case 1:
//            image.transform = CGAffineTransformMakeTranslation(400, 0);
//        case 2:
//            image.transform = CGAffineTransformMakeScale(0.00001, 0.00001);
//        default:
//            image.transform = CGAffineTransformMakeRotation(-3.14);
//        }
//
//    } completion:^(BOOL finished) {
//        [[self navigationController] popViewControllerAnimated:true];
//    }];
//}

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
