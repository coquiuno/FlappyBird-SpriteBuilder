#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene
- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    timeSinceObstacle += delta;
    
    if (timeSinceObstacle > 2.0f){
        
        // Add a new obstacle
        [self addObstacle];
        
        // Then reset the timer
        timeSinceObstacle = 0.0f;
        
        }
    
    // put update code here
}

// put new methods here

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    
    //this will get called every time the player touches the screen
    [character flap];
}

@end
