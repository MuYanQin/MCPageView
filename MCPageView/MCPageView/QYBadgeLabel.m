//
//  QYBadgeLabel.m
//  QQFoundation
//
//  Created by leaduMac on 2020/8/5.
//  Copyright © 2020 Yuan er. All rights reserved.
//

#import "QYBadgeLabel.h"
#import "UIView+QQFrame.h"
@implementation QYBadgeLabel

- (void)setText:(NSString *)text
{
    
    NSInteger count = text.intValue;

    if (text == nil ||  count < 0) {
        self.hidden = YES;
        return;
    }
    self.hidden = NO;
    if (count > 999) {
        text = @"999+";
    }else if(count ==0){
        text = @"";
    }else{
        text =  [NSString stringWithFormat:@"%lu",(long)count];
    }
    [super setText:text];
    [self sizeToFit];
    if (count <=9) {
        if (count ==0) {
            self.size = CGSizeMake(10, 10);
        }else{
            self.size = CGSizeMake(14, 14);
        }
    }else{
        self.size = CGSizeMake(self.frame.size.width + 5, 14);
    }
    self.layer.cornerRadius = self.frame.size.height/2;
    self.layer.masksToBounds = YES;
}

@end
