//
//  AdditionQuestion.h
//  Maths
//
//  Created by Esperanza on 2022-05-11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, copy) NSString* question;
@property (nonatomic) NSInteger answer;

@property (nonatomic, strong) NSDate* startTime;
@property (nonatomic, strong) NSDate* endTime;

@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

- (instancetype)init;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;


@end

NS_ASSUME_NONNULL_END
