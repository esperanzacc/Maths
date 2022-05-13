//
//  QuestionFactory.m
//  Maths
//
//  Created by Esperanza on 2022-05-13.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory

- (instancetype)init
{
  self = [super init];
  if (self) {
    _questionSubclassNames = [[NSArray alloc]initWithObjects:@"SubtractionQuestion", @"MultipleQuestion", @"DivideQuestion", nil];
                            
  }
  return self;
}

- (Question *) generateRandomQuestion {
  NSInteger randomIndex = arc4random_uniform(3);
  NSString *className = [_questionSubclassNames objectAtIndex:randomIndex];
  return [[NSClassFromString(className) alloc]init];

}

@end
