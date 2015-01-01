//
//  GameViewController.m
//  FlappyGame
//
//  Created by Diana Krasnozhenova on 1/1/15.
//  Copyright (c) 2015 Diana Krasnozhenova. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

-(IBAction)StartGame:(id)sender
{
    StartGame.hidden = YES;
    PlaneMovement = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(PlaneMoving) userInfo:nil repeats:YES];
}

- (void)PlaneMoving
{
    Plane.center = CGPointMake(Plane.center.x, Plane.center.y - PlaneFlight);
    PlaneFlight = PlaneFlight - 5;
    
    if (PlaneFlight < -15) {
        PlaneFlight = - 15;
    }
    
    if (PlaneFlight > 0 | PlaneFlight < 0) {
        Plane.image = [UIImage imageNamed:@"Plane.png"];
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    PlaneFlight = 30;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation
 
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
