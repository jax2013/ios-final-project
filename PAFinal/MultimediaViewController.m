//
//  MultimediaViewController.m
//  PAFinal
//
//  Created by Ning Zhao on 12/9/12.
//  Copyright (c) 2012 Ning Zhao. All rights reserved.
//

#import "MultimediaViewController.h"

@interface MultimediaViewController ()
{
    SystemSoundID mySystemSoundID;
    AVAudioPlayer *myAudioPlayer;
}
@end

@implementation MultimediaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)audiobutton:(id)sender {
    NSString *pathname = [[NSBundle mainBundle]pathForResource:@"Canon" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:pathname];
    NSError *myError = nil;
    myAudioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:&myError];
    if(myError){
        NSString *msg = [myError localizedDescription];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:msg delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        return;
    }
    myAudioPlayer.delegate = self;
    if(myAudioPlayer.isPlaying){[myAudioPlayer pause];}
    else{[myAudioPlayer play];}
}

- (IBAction)videobutton:(id)sender {
    NSString *pathname = [[NSBundle mainBundle]pathForResource:@"sample_mpeg4" ofType:@"mp4"];
    NSURL   *url = [NSURL fileURLWithPath:pathname];
    MPMoviePlayerViewController *vc = [[MPMoviePlayerViewController alloc]initWithContentURL:url];
    [self presentMoviePlayerViewControllerAnimated:vc];
}
@end
