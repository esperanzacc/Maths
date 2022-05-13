//
//  main.m
//  Maths
//
//  Created by Esperanza on 2022-05-11.
//

#import <Foundation/Foundation.h>
#import "QuestionFactory.h"
#import "QuestionManager.h"
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSLog(@"\nMaths!");
   
    BOOL (gameOn) = YES;
    ScoreKeeper *scoreCount = [[ScoreKeeper alloc]init];
    InputHandler *inputHandler = [[InputHandler alloc]init];
    QuestionManager *qManager = [[QuestionManager alloc]init];
    QuestionFactory *qFactory = [[QuestionFactory alloc]init];
    
    while (true) {
      Question *newQ = [qFactory generateRandomQuestion];
      [[qManager questions]addObject:(id)newQ];
      NSLog(@"%@",[newQ question]);
      
      NSString *userInput = [inputHandler getUserInput:@""];
      
      if ([[userInput lowercaseString] isEqualToString: @"quit"]) {
        gameOn = NO;
        break;
      } else {
        NSInteger userAns = [userInput intValue];
        if (userAns == [newQ answer]) {
          [scoreCount addRightCount];
          NSLog(@"Right!");
        } else {
          [scoreCount addWrongCount];
          NSLog(@"Wrong!");
        }
      }
      NSLog(@"%@", [scoreCount scoreTrack]);
      NSLog(@"%@", [qManager timeOutput]);
          
    }
    
  }
  return 0;
}
