//
//  ScoreKeeper.h
//  Maths
//
//  Created by Esperanza on 2022-05-11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger rightCount;
@property (nonatomic) NSInteger wrongCount;

- (instancetype)init;
- (void) addRightCount;
- (void) addWrongCount;
- (NSString *) scoreTrack;

@end

NS_ASSUME_NONNULL_END
