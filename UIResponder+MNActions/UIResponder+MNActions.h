//
//  UIResponder+MNActions
//
//  Created by Marc Nijdam on 2/2/13.
//  Copyright (c) 2013 Marc Nijdam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (MNActions)

- (void)sendAction:(SEL)action;
- (void)sendAction:(SEL)action with:(id)o1;
- (void)sendAction:(SEL)action with:(id)o1 with:(id)o2;

@end
