//
//  QuestionManager.h
//  Maths
//
//  Created by Esperanza on 2022-05-13.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray* questions;
- (instancetype)init;
- (NSString *) timeOutput;

@end

NS_ASSUME_NONNULL_END
