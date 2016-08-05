//
//  Game.m
//  Flappy Bird
//
//

#import "Game.h"

@interface Game ()

@end

@implementation Game


- (IBAction)StartGame:(id)sender
{
    StartGame.hidden = YES;
    BirdMovement = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(BirdMoving) userInfo:nil repeats:YES];
}

-(void)BirdMoving
{
    Bird.center = CGPointMake(Bird.center.x, Bird.center.y -Bird_Flight);

    Bird_Flight = Bird_Flight - 5;
    if ( Bird_Flight < -15)
        Bird_Flight = -15;
    if ( Bird_Flight > 0)
        Bird.image = [UIImage imageNamed:@"BirdUp.png"];
    if ( Bird_Flight <= 0)
        Bird.image = [UIImage imageNamed:@"BirdDown.png"];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *) event
{
    Bird_Flight = 30;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}
*/

@end
