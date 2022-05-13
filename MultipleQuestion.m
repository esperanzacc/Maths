//
//  MultipleQuestion.m
//  Maths
//
//  Created by Esperanza on 2022-05-13.
//

#import "MultipleQuestion.h"

@implementation MultipleQuestion

- (instancetype)init
{
  self = [super init];
  if (self) {
    [self generateQuestion];
  }
  return self;
}

- (void) generateQuestion{
  NSString *expression = [NSString stringWithFormat:@"%ld * %ld ?", [super leftValue], [super rightValue]];
  [super setQuestion:expression];
  NSInteger result = [super leftValue] * [super rightValue];
  [super setAnswer:result];
}

@end
