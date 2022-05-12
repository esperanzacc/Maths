//
//  ScoreKeeper.m
//  Maths
//
//  Created by Esperanza on 2022-05-11.
//

#import "ScoreKeeper.h"
#import "InputHandler.h"

@implementation ScoreKeeper

- (instancetype)init
{
  self = [super init];
  if (self) {
    _rightCount = 0;
    _wrongCount = 0;
  }
  return self;
}

- (NSString *) scoreTrack: (long) right andWrong: (long) wrong {
  NSString *score;
  float _right = [[NSNumber numberWithLong:right] floatValue];
  float _wrong = [[NSNumber numberWithLong:wrong] floatValue];
  float _percentage = (_right / (_right + _wrong)) * 100;
  score = [NSString stringWithFormat:@"score: %li right, %li wrong ---- %ld percent", right, wrong, (long)_percentage];
  
  return score;
}

@end
