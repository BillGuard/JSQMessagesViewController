#import "NSAttributedString+JSQMessagesViewController.h"

@implementation NSAttributedString (JSQMessagesViewController)

- (NSAttributedString *)attributedStringWithAttributeWithoutOverride:(NSString *)attributeName
                                                               value:(id)value
                                                               range:(NSRange)range
{
    NSMutableAttributedString *attributedString = [self mutableCopy];

    __block BOOL hasFont = NO;
    [attributedString enumerateAttribute:attributeName
                               inRange:range
                               options:NSAttributedStringEnumerationLongestEffectiveRangeNotRequired
                            usingBlock:^(id curValue, NSRange curRange, BOOL *stop) {
                                if (curValue) {
                                    hasFont = YES;
                                    *stop = YES;
                                }
                            }];

    if (!hasFont) {
        [attributedString addAttribute:attributeName
                               value:value
                               range:range];
    }

    return attributedString;
}

@end