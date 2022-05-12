//
//     ██████╗░███████╗░█████╗░░█████╗░██████╗░██████╗░        Simple way to customize your Card
//     ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗
//     ██║░░██║█████╗░░██║░░╚═╝███████║██████╔╝██║░░██║               ViewController.m
//     ██║░░██║██╔══╝░░██║░░██╗██╔══██║██╔══██╗██║░░██║        ***The main programm file***
//     ██████╔╝███████╗╚█████╔╝██║░░██║██║░░██║██████╔╝
//     ╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░                    Created by IH8Jam on 09.03.2022.
//
//  *PATENTED! Any use of this file for commercial purposes is prohibited. All rights reserved.

#import "ViewController.h"
#import "CardViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize chooseImageButton, cleanCacheButton, confirmButton, scrollerMain, loadedCard, cardImageController;

# pragma mark custom card (complete)

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info {
    
    // This is main function that takes a picked image and sets it up to your card preview
    
    // pick picture
    UIImage *img = [info objectForKey:UIImagePickerControllerOriginalImage];
    loadedCard.image = img;
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    // get files directory
    NSString *docDirPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    // change directory to /tmp path
    NSString *filePath =  [NSString stringWithFormat:@"%@", [[docDirPath componentsSeparatedByString:@"/Documents"] objectAtIndex:0]];
    filePath = [filePath stringByAppendingPathComponent:@"/tmp"];
    
    // get image
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSURL *directoryURL = [[NSURL alloc] initWithString: filePath];
    // the image will be getting from temp directory as the last objects in /tmp folder and moved to the right directory
    if ([fileManager fileExistsAtPath: filePath]) {
        // our image
        NSArray *cardFromTemp = [fileManager contentsOfDirectoryAtURL:directoryURL includingPropertiesForKeys:[NSArray arrayWithObjects:NSURLNameKey, NSURLIsDirectoryKey, NSURLContentModificationDateKey, nil] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
        NSString *card = [NSString stringWithFormat:@"%@", [cardFromTemp lastObject]];
        
        // this is a card directory
        card = [NSString stringWithFormat: @"%@", [[card componentsSeparatedByString:@"file://"] lastObject]];
        
        // path to cards' location
        NSString *path = @"/private/var/mobile/Library/Passes/Cards";
        NSURL *url = [[NSURL alloc] initWithString:path];

        NSFileManager *fm = [NSFileManager defaultManager];
        NSArray *urls = [fm contentsOfDirectoryAtURL:url includingPropertiesForKeys:[NSArray arrayWithObjects:NSURLNameKey, NSURLIsDirectoryKey, NSURLContentModificationDateKey, nil] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
        // making card
        if ([fm fileExistsAtPath:path]) {
            // all files in card folder
            for (NSURL *urlToCardFolder in urls) {
                // find right .pkpass file
                if ([[NSString stringWithFormat: @"%@", urlToCardFolder] containsString:@".pkpass"] &&
                     ![[NSString stringWithFormat: @"%@", urlToCardFolder] containsString:@".cache"]) {
                    // all files in .pkpass folder
                    NSArray *filesInCardDirectory = [fm contentsOfDirectoryAtURL:urlToCardFolder includingPropertiesForKeys:[NSArray arrayWithObjects:NSURLNameKey, NSURLIsDirectoryKey, NSURLContentModificationDateKey, nil] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
                    // find old card to remove
                    for (NSURL *cardPng in filesInCardDirectory) {
                        
                        if ([[cardPng lastPathComponent] isEqualToString:@"cardBackgroundCombined@2x.png"]) {
                            
                            NSError *error;
                            NSString *pathToCardFolder = [NSString stringWithFormat:@"%@", urlToCardFolder];
                            // convert url to string path
                            NSArray *cutElement = [pathToCardFolder componentsSeparatedByString:@"file://"];
                            NSString *pathToMove = [NSString stringWithFormat:@"%@cardBackgroundCombined@2x.png", [cutElement lastObject]];
                            // remove old card preview
                            if ([fm removeItemAtURL:cardPng error:&error]) {
                                // create new card preview
                                if ([fm moveItemAtPath:card toPath:pathToMove error:&error]) {
                                
                                    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Success!"
                                                                   message:@"The card was successfully set. Please, clear the cache to make it work:)"
                                                                   preferredStyle:UIAlertControllerStyleAlert];
                                     
                                    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {}];
                                     
                                    [alert addAction:defaultAction];
                                    [self presentViewController:alert animated:YES completion:nil];
                                    
                                } else {

                                    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Failure!"
                                                                   message:@"Something went wrong! Reset and try again."
                                                                   preferredStyle:UIAlertControllerStyleAlert];
                                     
                                    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {}];
                                     
                                    [alert addAction:defaultAction];
                                    [self presentViewController:alert animated:YES completion:nil];
                                    
                                }
                            }               //            //    //      //    //////////
                        }                   //                  //    //      //
                    }                       //            //    //  //        //
                }                           //            //    ////          //////////
            }                               //            //    //  //        //
        }                                   //            //    //    //      //
    }                                       //////////    //    //      //    //////////    this part of code :)
}
    
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    // This function stops animation of action below
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(IBAction)loadCardButton:(id)sender {
    
    // This action picks a picture
    
    cardImageController = [[UIImagePickerController alloc] init];
    cardImageController.delegate = self;
    [self presentViewController:cardImageController animated:TRUE completion:nil];
    
}


#pragma mark downloadPattern (complete)

-(IBAction)downloadPattern:(id)sender {
        
        // This is init of 'downloadPattern' func
    
        // image to share
        UIImage *image = [UIImage imageNamed:@"Cards.bundle/customCardPattern.png"];
//        UIImage *image = [UIImage imageNamed:@"customCardPattern.png"];
        NSArray *items = @[image];
        // share
        UIActivityViewController *controller = [[UIActivityViewController alloc]initWithActivityItems:items applicationActivities:nil];
        [self presentViewController:controller animated:YES completion:^{}];
    
}


-(void)viewDidLoad {
    
    // This is init of scrollView
    
    [super viewDidLoad];
    [scrollerMain setScrollEnabled:TRUE];
    [scrollerMain setContentSize:CGSizeMake(375, 1000)];
    
}


#pragma mark chooseImageButton (complete)

-(IBAction)chooseImageButton_clicked:(id)sender {
    
    // This button is for change viewController so this func is empty :(
    
}


#pragma mark confirmButton (complete)
-(IBAction)confirmButton_clicked:(id)sender {
    
    // This func sets chosen image to the card preview
    
    if (!cardName) {
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Choose the card!"
                                       message:@"You didn't choose the card. Try again when you're done."
                                       preferredStyle:UIAlertControllerStyleAlert];
         
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
           handler:^(UIAlertAction * action) {}];
         
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
    else {

        NSString *path = @"/private/var/mobile/Library/Passes/Cards";
        NSURL *url = [[NSURL alloc] initWithString:path];

        NSFileManager *fm = [NSFileManager defaultManager];
        NSArray *urls = [fm contentsOfDirectoryAtURL:url includingPropertiesForKeys:[NSArray arrayWithObjects:NSURLNameKey, NSURLIsDirectoryKey, NSURLContentModificationDateKey, nil] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];

        if ([fm fileExistsAtPath:path]) {

            for (NSURL *urlToCardFolder in urls) {

                if ([[NSString stringWithFormat: @"%@", urlToCardFolder] containsString:@".pkpass"] &&
                     ![[NSString stringWithFormat: @"%@", urlToCardFolder] containsString:@".cache"]) {

                    NSArray *filesInCardDirectory = [fm contentsOfDirectoryAtURL:urlToCardFolder includingPropertiesForKeys:[NSArray arrayWithObjects:NSURLNameKey, NSURLIsDirectoryKey, NSURLContentModificationDateKey, nil] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];

                    for (NSURL *cardPng in filesInCardDirectory) {

                        if ([[cardPng lastPathComponent] isEqualToString:@"cardBackgroundCombined@2x.png"]) {
                            NSError *error;
#pragma mark to fix
                            NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Cards" ofType:@"bundle"];
                            NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
                            NSString *resource = [bundle pathForResource:cardName ofType:@"png"];

                            NSString *pathToCardFolder = [NSString stringWithFormat:@"%@", urlToCardFolder];
                            NSArray *cutElement = [pathToCardFolder componentsSeparatedByString:@"file://"];
                            NSString *pathToMove = [NSString stringWithFormat:@"%@cardBackgroundCombined@2x.png", [cutElement lastObject]];

                            if ([fm removeItemAtURL:cardPng error:&error]) {
                                if ([fm copyItemAtPath:resource toPath:pathToMove error:&error]){
#pragma mark to fix
                                    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Success!"
                                                                   message:@"The card was successfully set. Please, clear the cache to make it work:)"
                                                                   preferredStyle:UIAlertControllerStyleAlert];
                                     
                                    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {}];
                                     
                                    [alert addAction:defaultAction];
                                    [self presentViewController:alert animated:YES completion:nil];
                                    
                                } else {
                                    
                                    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Failure!"
                                                                   message:@"Something went wrong! Reset and try again."
                                                                   preferredStyle:UIAlertControllerStyleAlert];
                                     
                                    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {}];
                                     
                                    [alert addAction:defaultAction];
                                    [self presentViewController:alert animated:YES completion:nil];
                                    
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


#pragma mark cleanCashButton (complete)

-(IBAction)cleanCacheButton_clicked:(id)sender {
    
    // This func cleans cache
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    // card path
    NSString *path = @"/private/var/mobile/Library/Passes/Cards";
    NSURL *directoryToCardURL = [[NSURL alloc] initWithString:path];
    // tmp path
    NSString *docDirPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *tmpPath =  [NSString stringWithFormat:@"%@", [[docDirPath componentsSeparatedByString:@"/Documents"] objectAtIndex:0]];
    tmpPath = [tmpPath stringByAppendingPathComponent:@"/tmp"];
    NSDirectoryEnumerator *enumerator = [fileManager enumeratorAtPath:tmpPath];
    NSString *file;
    // clean /tmp to avoid incorrect assignment of the image
    while (file = [enumerator nextObject]) {
        [fileManager removeItemAtPath:[tmpPath stringByAppendingPathComponent:file] error:nil];
    }
    // search path to .cache folder
    if ([fileManager fileExistsAtPath: path]) {
        
        NSArray *urls = [fileManager contentsOfDirectoryAtURL:directoryToCardURL includingPropertiesForKeys:[NSArray arrayWithObjects:NSURLNameKey, NSURLIsDirectoryKey, NSURLContentModificationDateKey, nil] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
        BOOL deletedCash = FALSE;
        
        for (NSURL *file in urls) {
            // choose .cache folder
            if (![[NSString stringWithFormat: @"%@", file] containsString:@".pkpass"] && [[NSString stringWithFormat: @"%@", file] containsString:@".cache"]) {
                
                NSError *error;
                // remove .chache folder
                if ([fileManager removeItemAtURL:file error:&error]){
                    
                    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"You've successfully cleaned the cache"
                                                   message:@"Now make a respring"
                                                   preferredStyle:UIAlertControllerStyleAlert];
                     
                    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                       handler:^(UIAlertAction * action) {}];
                     
                    [alert addAction:defaultAction];
                    [self presentViewController:alert animated:YES completion:nil];
                    deletedCash = TRUE;
                }
            }
        }
        if (!deletedCash) {
            UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Cache is already deleted!"
                                           message:@"You've already cleaned cache. Don't play with this!"
                                           preferredStyle:UIAlertControllerStyleAlert];
             
            UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
               handler:^(UIAlertAction * action) {}];
             
            [alert addAction:defaultAction];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }
    else {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Can not find a card"
                                       message:@"It seems like you havent set a card in Apple Wallet. Set your card and try again."
                                       preferredStyle:UIAlertControllerStyleAlert];
         
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
           handler:^(UIAlertAction * action) {}];
         
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

@end
