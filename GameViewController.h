//
//  GameViewController.h
//  FlappyGame
//
//  Created by Diana Krasnozhenova on 1/1/15.
//  Copyright (c) 2015 Diana Krasnozhenova. All rights reserved.
//

#import <UIKit/UIKit.h>

int PlaneFlight;

@interface GameViewController : UIViewController
{
    IBOutlet UIImageView *Plane;
    IBOutlet UIButton *StartGame;
    
    NSTimer *PlaneMovement;
}

-(IBAction)StartGame:(id)sender;
- (void)PlaneMoving;

@end
