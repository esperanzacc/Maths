//
//  ScoreKeeper.m
//  Maths
//
//  Created by Esperanza on 2022-05-11.
//

#import "ScoreKeeper.h"

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

- (void) addRightCount {
  _rightCount = _rightCount + 1;
}

- (void) addWrongCount {
  _wrongCount = _wrongCount + 1;
}

- (NSString *) scoreTrack {
  NSString *score;
  float right = [[NSNumber numberWithLong:_rightCount] floatValue];
  float wrong = [[NSNumber numberWithLong:_wrongCount] floatValue];
  float percentage = (right / (right + wrong)) * 100;
  score = [NSString stringWithFormat:@"score: %li right, %li wrong ---- %ld%%", _rightCount, _wrongCount, (long)percentage];

  return score;
}


@end
