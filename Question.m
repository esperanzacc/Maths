//
//  AdditionQuestion.m
//  Maths
//
//  Created by Esperanza on 2022-05-11.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    if (self = [super init]) {
      _leftValue = arc4random_uniform(90) + 10;
      _rightValue = arc4random_uniform(90) + 10;
      
//      NSString *expression = [NSString stringWithFormat:@"%ld + %ld ?", _leftValue, _rightValue];
//      _question = expression;
      
//      NSUInteger _result = _leftValue + _rightValue;
//      _answer = _result;
      
      _startTime = [NSDate date]; // set to the current date.
    }
    return self;
  }

- (NSInteger) answer {
  _endTime = [NSDate date];
  return _answer;
}

- (NSTimeInterval) answerTime{
  NSTimeInterval secondsElapsed = [_endTime timeIntervalSinceDate:_startTime];
  return secondsElapsed;
}

- (void) generateQuestion {
  
}

  
@end
