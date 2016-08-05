//
//  Game.h
//  Flappy Bird
//
//   
//

#import <UIKit/UIKit.h>
//#import
int Bird_Flight;
// Game :
@interface Game : UIViewController
{
    //interface for game
    IBOutlet UIImageView *Bird;
    IBOutlet UIButton *StartGame;
    NSTimer *BirdMovement;
}

-(IBAction)StartGame:(id)sender;
-(void) BirdMoving;

@end
