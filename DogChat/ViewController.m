//
//  ViewController.m
//  DogChat
//
//  Created by Laura Skelton on 8/13/14.
//  Copyright (c) 2014 lauraskelton. All rights reserved.
//

#import "ViewController.h"

#define streamURLString @"http://10.0.6.73:8080/plaincam.html"

@interface ViewController ()
@property (nonatomic, retain) IBOutlet UIWebView *webView;

-(IBAction)giveTreat:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    NSURL *streamURL = [NSURL URLWithString:streamURLString];

    [self.webView setFrame: self.view.bounds];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:streamURL]];
    
    [self gotDogText:nil];
    
}

-(IBAction)giveTreat:(id)sender
{
    // This will be hooked up to send a get request to the Raspberry Pi
    // that will tell the servo to move and dispense a treat
    NSLog(@"Treat!");
}

-(void)gotDogText:(id)sender
{
    // This will be called when the dog has pressed the force-sensitive resistor button
    // on which we will be monitoring for updates,
    // and will read as if the dog has texted us.
    
    // notify user of new DogChat message
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.alertBody = @"Message from Ada: \"Woof.\"";
    notification.soundName = @"Default";
    [[UIApplication sharedApplication] presentLocalNotificationNow:notification];
}

-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [self.webView reload];
}


@end
