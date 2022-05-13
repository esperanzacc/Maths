//
//  QuestionFactory.h
//  Maths
//
//  Created by Esperanza on 2022-05-13.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

@property (nonatomic) NSArray* questionSubclassNames;

- (instancetype)init;
- (Question *) generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
