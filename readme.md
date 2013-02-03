UIResponder+MNActions is a small interface addition to UIResponder to allow for *actions* to be sent up the [responder chain](https://developer.apple.com/library/ios/#documentation/EventHandling/Conceptual/EventHandlingiPhoneOS/event_delivery_responder_chain/event_delivery_responder_chain.html#//apple_ref/doc/uid/TP40009541-CH4-SW2).

There are three main ways in Cocoa to decouple requests for actions from the requestor knowing about the exact implementor:

1. Delegates and Blocks. This is the most common way to provide an object (the sender) with the target it should deliver its events/requests to. The sender is de-coupled from the exact receiver, but must be configered with one.

2. NSNotificationCenter. A centralized approach to throw requests/actions and have interested receivers act on them. The global approach to senders and receivers works well for a number of usecases but the receiver needs to distinguish between senders and it's harder to determine their context.

3. Responder chain. This allows for a flexible chain of receivers. Senders send events/request (called *actions* here) up the responder chain and they may be handled at various levels up the chain. 

The 'sendAction' methods in the offered category look in the receiver for the implemented selector and then move up the responder chain until they run out of responders or find the selector implemented. 

Example use:

``` objective-c
[self sendAction:@selector(presentMessage:) with:aMessage];
``` 

## Installation

Given how small the code here is, either just copy the two files into your project or use CocoaPods:

``` ruby
pod 'UIResponder+MNActions', :git => 'https://github.com/madninja/UIResponder-MNActions'
```

## Contact

Contact [@madninja](http://twitter.com/madninja) for any questions or comments. Pull requests are always welcome.

## License

This code is licensed under the MIT license. See the LICENSE file for more information.