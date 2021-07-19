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
//создаем кастомную подсветку при нажатии, super не вызываем, чтобы убрать дефолтные эфекты
- (void)setHighlighted:(BOOL)highlighted{
        
        if (highlighted) {
            CGColorRef color = [[UIColor colorWithRed:0.13 green:0.69 blue:0.56 alpha:1] CGColor];
            [self createShadowfor:self shadowPathRadius:10 color:color opacity:1 shadowRadius:2 offset:CGSizeZero];
        } else {
            CGColorRef color = [[UIColor colorWithRed:0 green:0 blue:0 alpha:0.25] CGColor];

            [self createShadowfor:self shadowPathRadius:10 color:color opacity:1 shadowRadius:1 offset:CGSizeZero];
        }
}

//отрисовка тени кнопки, используется во всех классах для всех кнопок, только создаю ее в каждом классе заново (костыль наверное)
-(void)createShadowfor:(UIView*)view shadowPathRadius:(CGFloat)shadowPathRadius color:(CGColorRef)color opacity:(CGFloat)opacity shadowRadius:(CGFloat)shadowRadius offset:(CGSize)offset {
//    создаем путь для тени - вокруг кнопки
    CGPathRef shadowPath = [[UIBezierPath bezierPathWithRoundedRect:view.bounds cornerRadius:shadowPathRadius] CGPath];
//    присваиваем путь для тени
    view.layer.shadowPath = shadowPath;
//    производим настройки
    view.layer.shadowColor = color;
    view.layer.shadowOpacity = opacity;
    view.layer.shadowRadius = shadowRadius;
    view.layer.shadowOffset = offset;
}

@end
