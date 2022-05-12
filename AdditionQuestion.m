//
//  AdditionQuestion.m
//  Maths
//
//  Created by Esperanza on 2022-05-11.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
      NSUInteger _left = arc4random_uniform(90) + 10;
      NSUInteger _right = arc4random_uniform(90) + 10;
      
      NSString *expression = [NSString stringWithFormat:@"%ld + %ld ?", _left, _right];
      _question = expression;
      
      NSUInteger _result = _left + _right;
      _answer = _result;
    }
    return self;
  }

  
@end
