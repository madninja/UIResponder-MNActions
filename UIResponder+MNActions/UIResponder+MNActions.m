//
//  UIResponder+MNActions
//
//  Created by Marc Nijdam on 2/2/13.
//  Copyright (c) 2013 Marc Nijdam. All rights reserved.
//

#import "UIResponder+MNActions.h"

@implementation UIResponder (MNActions)

- (id)findResponderForAction:(SEL)action
{
    UIResponder *nextResponder = self;
    while (nextResponder) {
        if ([nextResponder respondsToSelector:action]) {
            return nextResponder;
            break;
        }
        nextResponder = [nextResponder nextResponder];
    }
    return nil;
}

-(void)sendAction:(SEL)action {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    [[self findResponderForAction:action] performSelector:action];
#pragma clang diagnostic pop
}


-(void)sendAction:(SEL)action with:(id)o1 {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    [[self findResponderForAction:action] performSelector:action withObject:o1];
#pragma clang diagnostic pop
}

-(void)sendAction:(SEL)action with:(id)o1 with:(id)o2{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    [[self findResponderForAction:action] performSelector:action withObject:o1 withObject:o2];
#pragma clang diagnostic pop
}

@end
