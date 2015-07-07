//
//  UIView+BYXTimerEvent.m
//
//  Created by liuzuopeng on 14/11/26.
//

#import "UIView+BYXTimerEvent.h"

@implementation UIView (BYXTimerEvent)

- (void)setCountdown:(int)countSecond 
          startBlock:(void(^)(UIView *view, int countSecond))startBlock 
      countdownBlock:(void(^)(UIView *view, int leftSecond))countdownBlock {

    __block int timeout = countSecond;
    if(startBlock != nil) {
        startBlock(self, timeout);
    }
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0);
    
    dispatch_source_set_event_handler(_timer, ^{
        timeout--;
        dispatch_async(dispatch_get_main_queue(), ^{
            if(timeout <= 0) {
                dispatch_source_cancel(_timer);
            }
            
            if(countdownBlock) {
                countdownBlock(self, timeout);
            }
        });
    });
    
    //start dispatch
    dispatch_resume(_timer);
}

@end
