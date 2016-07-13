//
// Created by TomerO on 7/13/16.
// Copyright (c) 2016 Hexed Bits. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (JSQMessagesViewController)
- (NSAttributedString *)attributedStringWithAttributeWithoutOverride:(NSString *)attributeName
                                                               value:(id)value
                                                               range:(NSRange)range;
@end