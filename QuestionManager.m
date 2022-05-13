//
//  QuestionManager.m
//  Maths
//
//  Created by Esperanza on 2022-05-13.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
  self = [super init];
  if (self) {
    _questions = [[NSMutableArray alloc] init];
  }
  return self;
}

- (NSString *) timeOutput{
  float totalTime = 0;
  for (id question in _questions) {
    totalTime += [question answerTime];
  }
  
  float averageTime = totalTime / [_questions count];
  NSString* output = [NSString stringWithFormat:@"total time: %ld s, average time: %ld s", (long) totalTime, (long)averageTime];
  return output;
}

@end
