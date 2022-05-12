//
//  InputHandler.m
//  Maths
//
//  Created by Esperanza on 2022-05-11.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) getUserInput: (NSString *) prompt {
  char inputChars[255];

  fgets(inputChars, 255, stdin);

  NSString *str = [NSString stringWithUTF8String:inputChars];
  return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
