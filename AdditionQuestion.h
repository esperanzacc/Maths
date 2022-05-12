//
//  AdditionQuestion.h
//  Maths
//
//  Created by Esperanza on 2022-05-11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property (nonatomic, readwrite) NSString* question;
@property (nonatomic, readwrite) NSInteger answer;

- (instancetype)init;

@end

NS_ASSUME_NONNULL_END
