//
//  CustomButtons.m
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 19.07.2021.
//

#import "CustomButtons.h"

@implementation CustomButtons

-(instancetype)init{
    self = [super init];
    return self;
}

- (void)setHighlighted:(BOOL)highlighted{
//    [super setHighlighted:highlighted];
        
        if (highlighted) {
            CGPathRef shadowPath = [[UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:10] CGPath];
            self.layer.shadowPath = shadowPath;
            self.layer.shadowColor = [[UIColor colorWithRed:0.13 green:0.69 blue:0.56 alpha:1] CGColor];
            self.layer.shadowOpacity = 1;
            self.layer.shadowRadius = 2;
            self.layer.shadowOffset = CGSizeZero;
        } else {
            CGPathRef shadowPath = [[UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:10] CGPath];
            self.layer.shadowPath = shadowPath;
            self.layer.shadowColor = [[UIColor colorWithRed:0 green:0 blue:0 alpha:0.25] CGColor];
            self.layer.shadowOpacity = 1;
            self.layer.shadowRadius = 1;
            self.layer.shadowOffset = CGSizeZero;
        }
}

@end
