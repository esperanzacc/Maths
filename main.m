//
//  main.m
//  Maths
//
//  Created by Esperanza on 2022-05-11.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSLog(@"\nMaths!");
    
    BOOL (gameOn) = YES;
    ScoreKeeper *scoreCount = [[ScoreKeeper alloc]init];
    long rightCount = [scoreCount rightCount];
    long wrongCount = [scoreCount wrongCount];
  
    while (true) {
      AdditionQuestion *question = [[AdditionQuestion alloc]init];
      NSString *q1 = [question question];
      NSLog(@"%@", q1);
      
      NSString *userInput = [[[InputHandler alloc]init] getUserInput:@""];
      
      if ([userInput isEqualToString: @"quit"]) {
        gameOn = NO;
        break;
      } else {
        NSInteger userAns = [userInput intValue];
        if (userAns == [question answer]) {
          rightCount += 1;
          NSLog(@"Right!");
        } else {
          wrongCount += 1;
          NSLog(@"Wrong!");
        }
      }
      NSLog(@"%@", [scoreCount scoreTrack:rightCount andWrong:wrongCount]);
    }
    
  }
  return 0;
}
