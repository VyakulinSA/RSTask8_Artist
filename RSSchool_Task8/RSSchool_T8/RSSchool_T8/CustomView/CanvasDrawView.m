//
//  CanvasDrawView.m
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 19.07.2021.
//

#import "CanvasDrawView.h"

@implementation CanvasDrawView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    if (_canvasColorsArray == nil || [_canvasColorsArray count] == 0){
        _canvasColorsArray = [NSMutableArray arrayWithArray:@[UIColor.blackColor, UIColor.blackColor, UIColor.blackColor]];
    }
    
    if ([_layersName isEqual:@"head"]){
        [self createHeadLayers];
    }else if ([_layersName isEqual:@"tree"]){
        [self createTreeLayers];
    }else if ([_layersName isEqual:@"landscape"]){
        [self createLandscapeLayers];
    }else {
        [self createPlanetLayers];
    }
    
    
}

-(void)createHeadLayers{
    ///// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(40.5, 0)];
    [bezierPath addLineToPoint: CGPointMake(56, 60)];
    [bezierPath addLineToPoint: CGPointMake(68, 83)];
    [bezierPath addLineToPoint: CGPointMake(85.5, 102.5)];
    [bezierPath addLineToPoint: CGPointMake(112.5, 125)];
    [bezierPath addLineToPoint: CGPointMake(136, 130.5)];
    [bezierPath addLineToPoint: CGPointMake(172, 113)];
    [bezierPath addLineToPoint: CGPointMake(199, 83)];
    [bezierPath addLineToPoint: CGPointMake(207.5, 71)];
    [bezierPath addLineToPoint: CGPointMake(207.5, 48.5)];
    [bezierPath addLineToPoint: CGPointMake(209.5, 21.5)];
    [bezierPath addLineToPoint: CGPointMake(197.5, 11.5)];
    [bezierPath addLineToPoint: CGPointMake(181, 14.5)];
    [bezierPath addLineToPoint: CGPointMake(170, 31.5)];
    [bezierPath addLineToPoint: CGPointMake(168, 54.5)];
    [bezierPath addLineToPoint: CGPointMake(172, 67)];
    ////    [_canvasColorsArray[0] setStroke];
    //    bezierPath.lineWidth = 1;
    ////    bezierPath.miterLimit = 4;
    //    bezierPath.lineCapStyle = kCGLineCapRound;
    //    [bezierPath stroke];
    
    CAShapeLayer *shlayer = [CAShapeLayer new];
    shlayer.path = [bezierPath CGPath];
    shlayer.fillColor = nil;
    shlayer.strokeColor = [_canvasColorsArray[0] CGColor];
    shlayer.lineWidth = 1;
    shlayer.miterLimit = 4;
    shlayer.strokeStart = _strokeStartCounter;
    shlayer.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer];
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(163, 71)];
    [bezier2Path addLineToPoint: CGPointMake(154.5, 69.5)];
    [bezier2Path addLineToPoint: CGPointMake(145, 71.5)];
    [bezier2Path addLineToPoint: CGPointMake(137, 72.5)];
    [bezier2Path addLineToPoint: CGPointMake(127.5, 71.5)];
    [bezier2Path addLineToPoint: CGPointMake(119, 70)];
    [bezier2Path addLineToPoint: CGPointMake(112.5, 69.5)];
    [bezier2Path addLineToPoint: CGPointMake(105, 71)];
    [bezier2Path addLineToPoint: CGPointMake(100.5, 73)];
    [bezier2Path addLineToPoint: CGPointMake(106.5, 75.5)];
    [bezier2Path addLineToPoint: CGPointMake(111, 79)];
    [bezier2Path addLineToPoint: CGPointMake(115.5, 84)];
    [bezier2Path addLineToPoint: CGPointMake(121.5, 86.5)];
    [bezier2Path addLineToPoint: CGPointMake(129, 87.5)];
    [bezier2Path addLineToPoint: CGPointMake(136, 86.5)];
    [bezier2Path addLineToPoint: CGPointMake(143.5, 87.5)];
    [bezier2Path addLineToPoint: CGPointMake(149.5, 86.5)];
    [bezier2Path addLineToPoint: CGPointMake(156, 82.5)];
    [bezier2Path addLineToPoint: CGPointMake(163, 74.5)];
    [bezier2Path addLineToPoint: CGPointMake(167.5, 68.5)];
    [bezier2Path addLineToPoint: CGPointMake(159.5, 67.5)];
    [bezier2Path addLineToPoint: CGPointMake(150.5, 66.5)];
    [bezier2Path addLineToPoint: CGPointMake(141.5, 64.5)];
    [bezier2Path addLineToPoint: CGPointMake(133, 64)];
    [bezier2Path addLineToPoint: CGPointMake(123, 65.5)];
    [bezier2Path addLineToPoint: CGPointMake(114, 67.5)];
    [bezier2Path addLineToPoint: CGPointMake(104, 68.5)];
    [bezier2Path addLineToPoint: CGPointMake(97, 68)];
    [bezier2Path addLineToPoint: CGPointMake(106.5, 62)];
    [bezier2Path addLineToPoint: CGPointMake(115.5, 55.5)];
    [bezier2Path addLineToPoint: CGPointMake(121.5, 52)];
    [bezier2Path addLineToPoint: CGPointMake(126.5, 53.5)];
    [bezier2Path addLineToPoint: CGPointMake(132, 55.5)];
    [bezier2Path addLineToPoint: CGPointMake(138.5, 54.5)];
    [bezier2Path addLineToPoint: CGPointMake(145, 53.5)];
    [bezier2Path addLineToPoint: CGPointMake(150.5, 53.5)];
    [bezier2Path addLineToPoint: CGPointMake(153.5, 55.5)];
    [bezier2Path addLineToPoint: CGPointMake(158.5, 60.5)];
    [bezier2Path addLineToPoint: CGPointMake(166, 65)];
    //    [_canvasColorsArray[1] setStroke];
    //    bezier2Path.lineWidth = 1;
    //    bezier2Path.miterLimit = 4;
    //    bezier2Path.lineCapStyle = kCGLineCapRound;
    //    [bezier2Path stroke];
    
    CAShapeLayer *shlayer2 = [CAShapeLayer new];
    shlayer2.path = [bezier2Path CGPath];
    shlayer2.fillColor = nil;
    shlayer2.strokeColor = [_canvasColorsArray[1] CGColor];
    shlayer2.lineWidth = 1;
    shlayer2.miterLimit = 4;
    shlayer2.strokeStart = _strokeStartCounter;
    shlayer2.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer2];
    
    
    //// Bezier 3 Drawing
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(168.5, 73.5)];
    [bezier3Path addLineToPoint: CGPointMake(173, 79.5)];
    [bezier3Path addLineToPoint: CGPointMake(175.5, 86)];
    [bezier3Path addLineToPoint: CGPointMake(172, 95)];
    [bezier3Path addLineToPoint: CGPointMake(165, 103.5)];
    [bezier3Path addLineToPoint: CGPointMake(156, 110.5)];
    [bezier3Path addLineToPoint: CGPointMake(146.5, 103.5)];
    [bezier3Path addLineToPoint: CGPointMake(136, 99.5)];
    [bezier3Path addLineToPoint: CGPointMake(126.5, 99.5)];
    [bezier3Path addLineToPoint: CGPointMake(114.5, 103.5)];
    [bezier3Path addLineToPoint: CGPointMake(106.5, 113)];
    [bezier3Path addLineToPoint: CGPointMake(100, 125.5)];
    [bezier3Path addLineToPoint: CGPointMake(88.5, 118.5)];
    [bezier3Path addLineToPoint: CGPointMake(80.5, 108.5)];
    [bezier3Path addLineToPoint: CGPointMake(72, 99.5)];
    [bezier3Path addLineToPoint: CGPointMake(72, 113)];
    [bezier3Path addLineToPoint: CGPointMake(72, 141.5)];
    [bezier3Path addLineToPoint: CGPointMake(72, 158.5)];
    [bezier3Path addLineToPoint: CGPointMake(65, 170)];
    [bezier3Path addLineToPoint: CGPointMake(53.5, 178.5)];
    [bezier3Path addLineToPoint: CGPointMake(42.5, 185.5)];
    [bezier3Path addLineToPoint: CGPointMake(60, 192)];
    [bezier3Path addLineToPoint: CGPointMake(73.5, 200.5)];
    [bezier3Path addLineToPoint: CGPointMake(84, 214.5)];
    [bezier3Path addLineToPoint: CGPointMake(98, 232)];
    [bezier3Path addLineToPoint: CGPointMake(117, 250)];
    [bezier3Path addLineToPoint: CGPointMake(136, 256.5)];
    [bezier3Path addLineToPoint: CGPointMake(150, 256.5)];
    [bezier3Path addLineToPoint: CGPointMake(165, 248.5)];
    [bezier3Path addLineToPoint: CGPointMake(178.5, 232)];
    [bezier3Path addLineToPoint: CGPointMake(188.5, 210.5)];
    [bezier3Path addLineToPoint: CGPointMake(198, 194.5)];
    [bezier3Path addLineToPoint: CGPointMake(212.5, 188)];
    [bezier3Path addLineToPoint: CGPointMake(216, 188)];
    [bezier3Path addLineToPoint: CGPointMake(209.5, 172.5)];
    [bezier3Path addLineToPoint: CGPointMake(200, 144)];
    [bezier3Path addLineToPoint: CGPointMake(198, 121)];
    [bezier3Path addLineToPoint: CGPointMake(198, 97.5)];
    [bezier3Path addLineToPoint: CGPointMake(191, 108.5)];
    [bezier3Path addLineToPoint: CGPointMake(183, 116.5)];
    [bezier3Path addLineToPoint: CGPointMake(175.5, 125.5)];
    [bezier3Path addLineToPoint: CGPointMake(159, 141.5)];
    [bezier3Path addLineToPoint: CGPointMake(149, 156)];
    [bezier3Path addLineToPoint: CGPointMake(140.5, 177.5)];
    [bezier3Path addLineToPoint: CGPointMake(137.5, 203.5)];
    [bezier3Path addLineToPoint: CGPointMake(137.5, 232)];
    [bezier3Path addLineToPoint: CGPointMake(137.5, 250)];
    //    [_canvasColorsArray[2] setStroke];
    //    bezier3Path.lineWidth = 1;
    //    bezier3Path.miterLimit = 4;
    //    bezier3Path.lineCapStyle = kCGLineCapRound;
    //    [bezier3Path stroke];
    
    CAShapeLayer *shlayer3 = [CAShapeLayer new];
    shlayer3.path = [bezier3Path CGPath];
    shlayer3.fillColor = nil;
    shlayer3.strokeColor = [_canvasColorsArray[2] CGColor];
    shlayer3.lineWidth = 1;
    shlayer3.miterLimit = 4;
    shlayer3.strokeStart = _strokeStartCounter;
    shlayer3.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer3];
}
-(void)createTreeLayers{
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    
    [bezier2Path moveToPoint: CGPointMake(191.92, 60.45)];
    [bezier2Path addCurveToPoint: CGPointMake(196, 50.5) controlPoint1: CGPointMake(194.45, 57.77) controlPoint2: CGPointMake(196, 54.3)];
    [bezier2Path addCurveToPoint: CGPointMake(178.5, 35) controlPoint1: CGPointMake(196, 41.82) controlPoint2: CGPointMake(188.04, 35)];
    [bezier2Path addCurveToPoint: CGPointMake(173.72, 35.58) controlPoint1: CGPointMake(176.84, 35) controlPoint2: CGPointMake(175.24, 35.2)];
    [bezier2Path addCurveToPoint: CGPointMake(157.5, 22) controlPoint1: CGPointMake(174.36, 28.29) controlPoint2: CGPointMake(166.67, 22)];
    [bezier2Path addCurveToPoint: CGPointMake(149.16, 23.87) controlPoint1: CGPointMake(154.49, 22) controlPoint2: CGPointMake(151.65, 22.67)];
    [bezier2Path addCurveToPoint: CGPointMake(138.5, 20) controlPoint1: CGPointMake(147.11, 21.5) controlPoint2: CGPointMake(143, 20)];
    [bezier2Path addCurveToPoint: CGPointMake(133.72, 20.58) controlPoint1: CGPointMake(136.84, 20) controlPoint2: CGPointMake(135.24, 20.2)];
    [bezier2Path addCurveToPoint: CGPointMake(117.5, 7) controlPoint1: CGPointMake(134.36, 13.29) controlPoint2: CGPointMake(126.67, 7)];
    [bezier2Path addCurveToPoint: CGPointMake(102.78, 14.11) controlPoint1: CGPointMake(111.35, 7) controlPoint2: CGPointMake(105.91, 9.81)];
    [bezier2Path addCurveToPoint: CGPointMake(98.5, 13) controlPoint1: CGPointMake(102.17, 13.26) controlPoint2: CGPointMake(100.37, 13)];
    [bezier2Path addCurveToPoint: CGPointMake(88.27, 15.92) controlPoint1: CGPointMake(94.69, 13) controlPoint2: CGPointMake(91.15, 14.08)];
    [bezier2Path addCurveToPoint: CGPointMake(83.5, 15) controlPoint1: CGPointMake(87.33, 15.28) controlPoint2: CGPointMake(85.45, 15)];
    [bezier2Path addCurveToPoint: CGPointMake(68.78, 22.11) controlPoint1: CGPointMake(77.35, 15) controlPoint2: CGPointMake(71.91, 17.81)];
    [bezier2Path addCurveToPoint: CGPointMake(64.5, 21) controlPoint1: CGPointMake(68.17, 21.26) controlPoint2: CGPointMake(66.37, 21)];
    [bezier2Path addCurveToPoint: CGPointMake(47, 36.5) controlPoint1: CGPointMake(54.96, 21) controlPoint2: CGPointMake(47, 27.82)];
    [bezier2Path addCurveToPoint: CGPointMake(47.01, 37.06) controlPoint1: CGPointMake(47, 36.69) controlPoint2: CGPointMake(47, 36.88)];
    [bezier2Path addCurveToPoint: CGPointMake(45.78, 38.11) controlPoint1: CGPointMake(46.75, 36.88) controlPoint2: CGPointMake(46.24, 37.48)];
    [bezier2Path addCurveToPoint: CGPointMake(41.5, 37) controlPoint1: CGPointMake(45.17, 37.26) controlPoint2: CGPointMake(43.37, 37)];
    [bezier2Path addCurveToPoint: CGPointMake(24, 52.5) controlPoint1: CGPointMake(31.96, 37) controlPoint2: CGPointMake(24, 43.82)];
    [bezier2Path addCurveToPoint: CGPointMake(25.7, 59.18) controlPoint1: CGPointMake(24, 54.89) controlPoint2: CGPointMake(24.61, 57.16)];
    [bezier2Path addCurveToPoint: CGPointMake(23, 66.5) controlPoint1: CGPointMake(24.02, 60.53) controlPoint2: CGPointMake(23, 63.4)];
    [bezier2Path addCurveToPoint: CGPointMake(24.28, 72.34) controlPoint1: CGPointMake(23, 68.57) controlPoint2: CGPointMake(23.46, 70.54)];
    [bezier2Path addCurveToPoint: CGPointMake(21, 80.5) controlPoint1: CGPointMake(22.28, 73.85) controlPoint2: CGPointMake(21, 77.04)];
    [bezier2Path addCurveToPoint: CGPointMake(22.7, 87.18) controlPoint1: CGPointMake(21, 82.89) controlPoint2: CGPointMake(21.61, 85.16)];
    [bezier2Path addCurveToPoint: CGPointMake(20, 94.5) controlPoint1: CGPointMake(21.02, 88.53) controlPoint2: CGPointMake(20, 91.4)];
    [bezier2Path addCurveToPoint: CGPointMake(37.5, 110) controlPoint1: CGPointMake(20, 103.18) controlPoint2: CGPointMake(27.96, 110)];
    [bezier2Path addCurveToPoint: CGPointMake(39.79, 109.87) controlPoint1: CGPointMake(38.28, 110) controlPoint2: CGPointMake(39.04, 109.95)];
    [bezier2Path addCurveToPoint: CGPointMake(54.5, 118) controlPoint1: CGPointMake(41.68, 114.52) controlPoint2: CGPointMake(47.66, 118)];
    [bezier2Path addCurveToPoint: CGPointMake(62.78, 116.16) controlPoint1: CGPointMake(57.49, 118) controlPoint2: CGPointMake(60.31, 117.33)];
    [bezier2Path addCurveToPoint: CGPointMake(77.5, 125) controlPoint1: CGPointMake(64.17, 121.22) controlPoint2: CGPointMake(70.37, 125)];
    [bezier2Path addCurveToPoint: CGPointMake(79.79, 124.87) controlPoint1: CGPointMake(78.28, 125) controlPoint2: CGPointMake(79.04, 124.96)];
    [bezier2Path addCurveToPoint: CGPointMake(94.5, 133) controlPoint1: CGPointMake(81.68, 129.52) controlPoint2: CGPointMake(87.66, 133)];
    [bezier2Path addCurveToPoint: CGPointMake(103.47, 130.81) controlPoint1: CGPointMake(97.77, 133) controlPoint2: CGPointMake(100.84, 132.21)];
    [bezier2Path addCurveToPoint: CGPointMake(107.45, 132.58) controlPoint1: CGPointMake(104.04, 131.61) controlPoint2: CGPointMake(105.7, 132.22)];
    [bezier2Path addCurveToPoint: CGPointMake(120.5, 138) controlPoint1: CGPointMake(110.14, 135.79) controlPoint2: CGPointMake(115.04, 138)];
    [bezier2Path addCurveToPoint: CGPointMake(128.78, 136.16) controlPoint1: CGPointMake(123.49, 138) controlPoint2: CGPointMake(126.31, 137.34)];
    [bezier2Path addCurveToPoint: CGPointMake(143.5, 145) controlPoint1: CGPointMake(130.17, 141.22) controlPoint2: CGPointMake(136.37, 145)];
    [bezier2Path addCurveToPoint: CGPointMake(145.79, 144.87) controlPoint1: CGPointMake(144.28, 145) controlPoint2: CGPointMake(145.04, 144.96)];
    [bezier2Path addCurveToPoint: CGPointMake(160.5, 153) controlPoint1: CGPointMake(147.68, 149.52) controlPoint2: CGPointMake(153.66, 153)];
    [bezier2Path addCurveToPoint: CGPointMake(169.47, 150.81) controlPoint1: CGPointMake(163.77, 153) controlPoint2: CGPointMake(166.84, 152.21)];
    [bezier2Path addCurveToPoint: CGPointMake(177.5, 153) controlPoint1: CGPointMake(171.16, 152.21) controlPoint2: CGPointMake(174.23, 153)];
    [bezier2Path addCurveToPoint: CGPointMake(195, 137.5) controlPoint1: CGPointMake(187.04, 153) controlPoint2: CGPointMake(195, 146.18)];
    [bezier2Path addCurveToPoint: CGPointMake(194.99, 136.95) controlPoint1: CGPointMake(195, 137.32) controlPoint2: CGPointMake(195, 137.13)];
    [bezier2Path addCurveToPoint: CGPointMake(194.5, 138) controlPoint1: CGPointMake(194.14, 138) controlPoint2: CGPointMake(194.32, 138)];
    [bezier2Path addCurveToPoint: CGPointMake(203.47, 135.81) controlPoint1: CGPointMake(197.77, 138) controlPoint2: CGPointMake(200.84, 137.21)];
    [bezier2Path addCurveToPoint: CGPointMake(211.5, 138) controlPoint1: CGPointMake(205.16, 137.21) controlPoint2: CGPointMake(208.23, 138)];
    [bezier2Path addCurveToPoint: CGPointMake(229, 122.5) controlPoint1: CGPointMake(221.04, 138) controlPoint2: CGPointMake(229, 131.18)];
    [bezier2Path addCurveToPoint: CGPointMake(228.63, 119.33) controlPoint1: CGPointMake(229, 121.42) controlPoint2: CGPointMake(228.87, 120.36)];
    [bezier2Path addCurveToPoint: CGPointMake(236, 107.5) controlPoint1: CGPointMake(232.85, 117.67) controlPoint2: CGPointMake(236, 112.94)];
    [bezier2Path addCurveToPoint: CGPointMake(231.92, 97.55) controlPoint1: CGPointMake(236, 103.7) controlPoint2: CGPointMake(234.45, 100.23)];
    [bezier2Path addCurveToPoint: CGPointMake(239, 86.5) controlPoint1: CGPointMake(236.1, 96.29) controlPoint2: CGPointMake(239, 91.72)];
    [bezier2Path addCurveToPoint: CGPointMake(221.5, 71) controlPoint1: CGPointMake(239, 77.82) controlPoint2: CGPointMake(231.04, 71)];
    [bezier2Path addCurveToPoint: CGPointMake(216.72, 71.58) controlPoint1: CGPointMake(219.84, 71) controlPoint2: CGPointMake(218.24, 71.2)];
    [bezier2Path addCurveToPoint: CGPointMake(200.5, 58) controlPoint1: CGPointMake(217.36, 64.29) controlPoint2: CGPointMake(209.67, 58)];
    [bezier2Path addCurveToPoint: CGPointMake(192.16, 59.87) controlPoint1: CGPointMake(197.49, 58) controlPoint2: CGPointMake(194.65, 58.67)];
    [bezier2Path addCurveToPoint: CGPointMake(191.73, 58.92) controlPoint1: CGPointMake(192.75, 59.61) controlPoint2: CGPointMake(192.25, 59.25)];
    
    
    
    
    CAShapeLayer *shlayer = [CAShapeLayer new];
    shlayer.path = [bezier2Path CGPath];
    shlayer.fillColor = nil;
    shlayer.strokeColor = [_canvasColorsArray[0] CGColor];
    shlayer.lineWidth = 1;
    shlayer.miterLimit = 4;
    shlayer.strokeStart = _strokeStartCounter;
    shlayer.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer];
    
    
    //// Bezier 3 Drawing
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(60, 244.5)];
    [bezier3Path addCurveToPoint: CGPointMake(121.5, 181.5) controlPoint1: CGPointMake(79.83, 238.67) controlPoint2: CGPointMake(119.9, 217.9)];
    [bezier3Path addCurveToPoint: CGPointMake(111.5, 134.5) controlPoint1: CGPointMake(123.1, 145.1) controlPoint2: CGPointMake(115.5, 135)];
    [bezier3Path moveToPoint: CGPointMake(203.5, 250)];
    [bezier3Path addCurveToPoint: CGPointMake(150, 221) controlPoint1: CGPointMake(185.17, 249) controlPoint2: CGPointMake(148.8, 241.8)];
    [bezier3Path addCurveToPoint: CGPointMake(161, 162.5) controlPoint1: CGPointMake(151.2, 200.2) controlPoint2: CGPointMake(157.83, 173.33)];
    [bezier3Path addCurveToPoint: CGPointMake(170.5, 150.5) controlPoint1: CGPointMake(163.17, 158.17) controlPoint2: CGPointMake(168.1, 149.7)];
    [bezier3Path moveToPoint: CGPointMake(136.5, 159)];
    [bezier3Path addCurveToPoint: CGPointMake(129, 208) controlPoint1: CGPointMake(135, 174.17) controlPoint2: CGPointMake(131.4, 205.2)];
    [bezier3Path moveToPoint: CGPointMake(141.5, 233.5)];
    [bezier3Path addCurveToPoint: CGPointMake(146.5, 162.5) controlPoint1: CGPointMake(141.5, 225.5) controlPoint2: CGPointMake(140.5, 177)];
    [bezier3Path moveToPoint: CGPointMake(123, 201.5)];
    [bezier3Path addCurveToPoint: CGPointMake(102.5, 230.5) controlPoint1: CGPointMake(110, 220.5) controlPoint2: CGPointMake(108.5, 225)];
    //    [strokeColor setStroke];
    //        bezier3Path.lineWidth = 1;
    //        bezier3Path.miterLimit = 4;
    //        bezier3Path.lineCapStyle = kCGLineCapRound;
    //        [bezier3Path stroke];
    
    
    CAShapeLayer *shlayer2 = [CAShapeLayer new];
    shlayer2.path = [bezier3Path CGPath];
    shlayer2.fillColor = nil;
    shlayer2.strokeColor = [_canvasColorsArray[1] CGColor];
    shlayer2.lineWidth = 1;
    shlayer2.miterLimit = 4;
    shlayer2.strokeStart = _strokeStartCounter;
    shlayer2.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer2];
    
    
    //// Bezier 4 Drawing
    UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
    [bezier4Path moveToPoint: CGPointMake(77.5, 237.5)];
    [bezier4Path addCurveToPoint: CGPointMake(44, 242.81) controlPoint1: CGPointMake(69.5, 229) controlPoint2: CGPointMake(54.4, 229.61)];
    [bezier4Path moveToPoint: CGPointMake(17.5, 249)];
    [bezier4Path addCurveToPoint: CGPointMake(41.5, 242) controlPoint1: CGPointMake(20.83, 245.17) controlPoint2: CGPointMake(30.3, 238.4)];
    [bezier4Path addCurveToPoint: CGPointMake(52, 246) controlPoint1: CGPointMake(52.7, 245.6) controlPoint2: CGPointMake(53.17, 246.17)];
    [bezier4Path moveToPoint: CGPointMake(156, 234.5)];
    [bezier4Path addCurveToPoint: CGPointMake(179.5, 234.5) controlPoint1: CGPointMake(161, 231.73) controlPoint2: CGPointMake(172.7, 227.85)];
    [bezier4Path addCurveToPoint: CGPointMake(184.74, 240.5) controlPoint1: CGPointMake(181.78, 236.73) controlPoint2: CGPointMake(183.48, 238.74)];
    [bezier4Path moveToPoint: CGPointMake(188, 247.5)];
    [bezier4Path addCurveToPoint: CGPointMake(184.74, 240.5) controlPoint1: CGPointMake(188, 246.46) controlPoint2: CGPointMake(187.25, 243.99)];
    [bezier4Path moveToPoint: CGPointMake(184.74, 240.5)];
    [bezier4Path addCurveToPoint: CGPointMake(219.5, 242) controlPoint1: CGPointMake(196.33, 237.33) controlPoint2: CGPointMake(219.5, 233.2)];
    [bezier4Path addCurveToPoint: CGPointMake(202.5, 250) controlPoint1: CGPointMake(219.5, 250.8) controlPoint2: CGPointMake(203.83, 249.17)];
    //    [strokeColor setStroke];
    //        bezier4Path.lineWidth = 0.5;
    //        bezier4Path.miterLimit = 4;
    //        bezier4Path.lineCapStyle = kCGLineCapRound;
    //        [bezier4Path stroke];
    
    
    CAShapeLayer *shlayer3 = [CAShapeLayer new];
    shlayer3.path = [bezier4Path CGPath];
    shlayer3.fillColor = nil;
    shlayer3.strokeColor = [_canvasColorsArray[2] CGColor];
    shlayer3.lineWidth = 1;
    shlayer3.miterLimit = 4;
    shlayer3.strokeStart = _strokeStartCounter;
    shlayer3.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer3];
}
-(void)createLandscapeLayers{
    //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(233, 114)];
        [bezierPath addLineToPoint: CGPointMake(239.5, 123.5)];
        [bezierPath addLineToPoint: CGPointMake(252, 136)];
        [bezierPath addLineToPoint: CGPointMake(251, 119.5)];
        [bezierPath addLineToPoint: CGPointMake(248.5, 104)];
        [bezierPath addLineToPoint: CGPointMake(243.5, 90.5)];
        [bezierPath addLineToPoint: CGPointMake(239.5, 82)];
        [bezierPath addLineToPoint: CGPointMake(235.5, 74.5)];
        [bezierPath addLineToPoint: CGPointMake(229.5, 66)];
        [bezierPath addLineToPoint: CGPointMake(224.5, 65.5)];
        [bezierPath addLineToPoint: CGPointMake(222, 65.5)];
        [bezierPath addLineToPoint: CGPointMake(218, 66)];
        [bezierPath addLineToPoint: CGPointMake(214, 67.5)];
        [bezierPath addLineToPoint: CGPointMake(210.5, 65.5)];
        [bezierPath addLineToPoint: CGPointMake(207.5, 64.5)];
        [bezierPath addLineToPoint: CGPointMake(203.5, 65.5)];
        [bezierPath addLineToPoint: CGPointMake(198.5, 65.5)];
        [bezierPath addLineToPoint: CGPointMake(194, 67.5)];
        [bezierPath addLineToPoint: CGPointMake(191, 66)];
        [bezierPath addLineToPoint: CGPointMake(187, 64.5)];
        [bezierPath addLineToPoint: CGPointMake(183, 64.5)];
        [bezierPath addLineToPoint: CGPointMake(176, 64.5)];
        [bezierPath addLineToPoint: CGPointMake(169.5, 64.5)];
        [bezierPath addLineToPoint: CGPointMake(166.5, 66)];
        [bezierPath addLineToPoint: CGPointMake(160, 64.5)];
        [bezierPath addLineToPoint: CGPointMake(154, 64.5)];
        [bezierPath addLineToPoint: CGPointMake(150, 63.5)];
        [bezierPath addLineToPoint: CGPointMake(144.5, 65.5)];
        [bezierPath addLineToPoint: CGPointMake(141, 63.5)];
        [bezierPath addLineToPoint: CGPointMake(134, 63.5)];
        [bezierPath addLineToPoint: CGPointMake(139.5, 62)];
        [bezierPath addLineToPoint: CGPointMake(143, 59)];
        [bezierPath addLineToPoint: CGPointMake(144.5, 57)];
        [bezierPath addLineToPoint: CGPointMake(147.5, 54.5)];
        [bezierPath addLineToPoint: CGPointMake(150, 51)];
        [bezierPath addLineToPoint: CGPointMake(154, 51)];
        [bezierPath addLineToPoint: CGPointMake(161.5, 51)];
        [bezierPath addLineToPoint: CGPointMake(167, 51)];
        [bezierPath addLineToPoint: CGPointMake(172, 48)];
        [bezierPath addLineToPoint: CGPointMake(174, 44)];
        [bezierPath addLineToPoint: CGPointMake(180.5, 43)];
        [bezierPath addLineToPoint: CGPointMake(184, 45.5)];
        [bezierPath addLineToPoint: CGPointMake(188, 44)];
        [bezierPath addLineToPoint: CGPointMake(192, 45.5)];
        [bezierPath addLineToPoint: CGPointMake(194, 41.5)];
        [bezierPath addLineToPoint: CGPointMake(198.5, 39.5)];
        [bezierPath addLineToPoint: CGPointMake(204.5, 39.5)];
        [bezierPath addLineToPoint: CGPointMake(194, 32)];
        [bezierPath addLineToPoint: CGPointMake(180.5, 24.5)];
        [bezierPath addLineToPoint: CGPointMake(163, 17.5)];
        [bezierPath addLineToPoint: CGPointMake(143, 13.5)];
        [bezierPath addLineToPoint: CGPointMake(127.5, 12.5)];
        [bezierPath addLineToPoint: CGPointMake(110.5, 13.5)];
        [bezierPath addLineToPoint: CGPointMake(94, 16)];
        [bezierPath addLineToPoint: CGPointMake(81, 21)];
        [bezierPath addLineToPoint: CGPointMake(69.5, 26)];
        [bezierPath addLineToPoint: CGPointMake(75, 29)];
        [bezierPath addLineToPoint: CGPointMake(79, 33)];
        [bezierPath addLineToPoint: CGPointMake(82, 38.5)];
        [bezierPath addLineToPoint: CGPointMake(82.5, 44)];
        [bezierPath addLineToPoint: CGPointMake(79, 52)];
        [bezierPath addLineToPoint: CGPointMake(73.5, 57)];
        [bezierPath addLineToPoint: CGPointMake(69.5, 59)];
        [bezierPath addLineToPoint: CGPointMake(65, 59)];
        [bezierPath addLineToPoint: CGPointMake(58, 56)];
        [bezierPath addLineToPoint: CGPointMake(53, 52)];
        [bezierPath addLineToPoint: CGPointMake(49.5, 45.5)];
        [bezierPath addLineToPoint: CGPointMake(49.5, 39.5)];
        [bezierPath addLineToPoint: CGPointMake(37, 50.5)];
        [bezierPath addLineToPoint: CGPointMake(28.5, 60.5)];
        [bezierPath addLineToPoint: CGPointMake(21, 72)];
        [bezierPath addLineToPoint: CGPointMake(15.5, 83)];
        [bezierPath addLineToPoint: CGPointMake(14, 89)];
        [bezierPath addLineToPoint: CGPointMake(17.5, 89)];
        [bezierPath addLineToPoint: CGPointMake(21, 88)];
        [bezierPath addLineToPoint: CGPointMake(27.5, 92)];
        [bezierPath addLineToPoint: CGPointMake(33.5, 92)];
        [bezierPath addLineToPoint: CGPointMake(39.5, 97)];
        [bezierPath addLineToPoint: CGPointMake(43, 96)];
        [bezierPath addLineToPoint: CGPointMake(48, 98.5)];
        [bezierPath addLineToPoint: CGPointMake(45.5, 99.5)];
        [bezierPath addLineToPoint: CGPointMake(39.5, 101)];
        [bezierPath addLineToPoint: CGPointMake(34.5, 100)];
        [bezierPath addLineToPoint: CGPointMake(32.5, 101)];
        [bezierPath addLineToPoint: CGPointMake(28.5, 101)];
        [bezierPath addLineToPoint: CGPointMake(25.5, 101)];
        [bezierPath addLineToPoint: CGPointMake(23.5, 103)];
        [bezierPath addLineToPoint: CGPointMake(21.5, 102)];
        [bezierPath addLineToPoint: CGPointMake(19.5, 102)];
        [bezierPath addLineToPoint: CGPointMake(14, 99.5)];
        [bezierPath addLineToPoint: CGPointMake(8.5, 102)];
        [bezierPath addLineToPoint: CGPointMake(6, 110.5)];
        [bezierPath addLineToPoint: CGPointMake(4, 136.5)];
        [bezierPath addLineToPoint: CGPointMake(8.5, 166.5)];
        [bezierPath addLineToPoint: CGPointMake(15.5, 159.5)];
        [bezierPath addLineToPoint: CGPointMake(21, 155.5)];
        [bezierPath addLineToPoint: CGPointMake(32.5, 143)];
        [bezierPath addLineToPoint: CGPointMake(43, 131.5)];
        [bezierPath moveToPoint: CGPointMake(233, 114)];
        [bezierPath addLineToPoint: CGPointMake(222, 119.5)];
        [bezierPath moveToPoint: CGPointMake(233, 114)];
        [bezierPath addLineToPoint: CGPointMake(231.17, 123.5)];
        [bezierPath addLineToPoint: CGPointMake(231.17, 135)];
        [bezierPath moveToPoint: CGPointMake(222, 119.5)];
        [bezierPath addLineToPoint: CGPointMake(210.5, 96)];
        [bezierPath addLineToPoint: CGPointMake(202, 88.5)];
        [bezierPath addLineToPoint: CGPointMake(194, 98.5)];
        [bezierPath addLineToPoint: CGPointMake(183, 111)];
        [bezierPath addLineToPoint: CGPointMake(178.5, 108.5)];
        [bezierPath addLineToPoint: CGPointMake(161.5, 126.5)];
        [bezierPath addLineToPoint: CGPointMake(147.5, 147)];
        [bezierPath moveToPoint: CGPointMake(222, 119.5)];
        [bezierPath addLineToPoint: CGPointMake(226, 126.5)];
        [bezierPath addLineToPoint: CGPointMake(231.17, 135)];
        [bezierPath moveToPoint: CGPointMake(147.5, 147)];
        [bezierPath addLineToPoint: CGPointMake(139.5, 138)];
        [bezierPath addLineToPoint: CGPointMake(119, 118)];
        [bezierPath addLineToPoint: CGPointMake(111.5, 98.5)];
        [bezierPath addLineToPoint: CGPointMake(107, 98.5)];
        [bezierPath addLineToPoint: CGPointMake(100.5, 88.5)];
        [bezierPath moveToPoint: CGPointMake(147.5, 147)];
        [bezierPath addLineToPoint: CGPointMake(147.5, 149.5)];
        [bezierPath addLineToPoint: CGPointMake(151, 153)];
        [bezierPath addLineToPoint: CGPointMake(158.25, 160.25)];
        [bezierPath moveToPoint: CGPointMake(100.5, 88.5)];
        [bezierPath addLineToPoint: CGPointMake(89, 97)];
        [bezierPath addLineToPoint: CGPointMake(85.5, 104)];
        [bezierPath addLineToPoint: CGPointMake(74.5, 116.5)];
        [bezierPath addLineToPoint: CGPointMake(68.5, 114)];
        [bezierPath moveToPoint: CGPointMake(100.5, 88.5)];
        [bezierPath addLineToPoint: CGPointMake(96.5, 96)];
        [bezierPath addLineToPoint: CGPointMake(95, 104)];
        [bezierPath moveToPoint: CGPointMake(68.5, 114)];
        [bezierPath addLineToPoint: CGPointMake(53, 134)];
        [bezierPath addLineToPoint: CGPointMake(43, 131.5)];
        [bezierPath moveToPoint: CGPointMake(68.5, 114)];
        [bezierPath addLineToPoint: CGPointMake(68.5, 126.5)];
        [bezierPath addLineToPoint: CGPointMake(70.5, 138)];
        [bezierPath moveToPoint: CGPointMake(43, 131.5)];
        [bezierPath addLineToPoint: CGPointMake(46.5, 137.5)];
        [bezierPath addLineToPoint: CGPointMake(48, 144.5)];
        [bezierPath addLineToPoint: CGPointMake(48, 154)];
        [bezierPath addLineToPoint: CGPointMake(53, 163.5)];
        [bezierPath moveToPoint: CGPointMake(165.5, 167.5)];
        [bezierPath addLineToPoint: CGPointMake(158.25, 160.25)];
        [bezierPath moveToPoint: CGPointMake(242.5, 155)];
        [bezierPath addLineToPoint: CGPointMake(233, 138)];
        [bezierPath addLineToPoint: CGPointMake(231.17, 135)];
        [bezierPath moveToPoint: CGPointMake(158.25, 160.25)];
        [bezierPath addLineToPoint: CGPointMake(172, 155.5)];
        [bezierPath addLineToPoint: CGPointMake(173.16, 157)];
        [bezierPath moveToPoint: CGPointMake(180.5, 166.5)];
        [bezierPath addLineToPoint: CGPointMake(173.16, 157)];
        [bezierPath moveToPoint: CGPointMake(173.16, 157)];
        [bezierPath addLineToPoint: CGPointMake(180.5, 154)];
        [bezierPath addLineToPoint: CGPointMake(187, 157)];
        [bezierPath addLineToPoint: CGPointMake(197, 163.5)];
        [bezierPath addLineToPoint: CGPointMake(207.5, 167.5)];
        [bezierPath addLineToPoint: CGPointMake(216, 174.5)];
        [bezierPath addLineToPoint: CGPointMake(222, 176)];
        [bezierPath addLineToPoint: CGPointMake(237.5, 188)];
        [bezierPath moveToPoint: CGPointMake(92, 129)];
        [bezierPath addLineToPoint: CGPointMake(92, 120.5)];
        [bezierPath addLineToPoint: CGPointMake(93.5, 111)];

    ////    [_canvasColorsArray[0] setStroke];
    //    bezierPath.lineWidth = 1;
    ////    bezierPath.miterLimit = 4;
    //    bezierPath.lineCapStyle = kCGLineCapRound;
    //    [bezierPath stroke];
    
    CAShapeLayer *shlayer = [CAShapeLayer new];
    shlayer.path = [bezierPath CGPath];
    shlayer.fillColor = nil;
    shlayer.strokeColor = [_canvasColorsArray[0] CGColor];
    shlayer.lineWidth = 1;
    shlayer.miterLimit = 4;
    shlayer.strokeStart = 0;
    shlayer.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer];
    
    
     //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(19.5, 193.5)];
    [bezier2Path addLineToPoint: CGPointMake(34, 193.5)];
    [bezier2Path addLineToPoint: CGPointMake(48, 190)];
    [bezier2Path addLineToPoint: CGPointMake(65.5, 180.5)];
    [bezier2Path addLineToPoint: CGPointMake(82.5, 175.5)];
    [bezier2Path addLineToPoint: CGPointMake(98.5, 182)];
    [bezier2Path addLineToPoint: CGPointMake(111.25, 187.75)];
    [bezier2Path moveToPoint: CGPointMake(124, 193.5)];
    [bezier2Path addLineToPoint: CGPointMake(111.25, 187.75)];
    [bezier2Path moveToPoint: CGPointMake(111.25, 187.75)];
    [bezier2Path addLineToPoint: CGPointMake(124, 184)];
    [bezier2Path addLineToPoint: CGPointMake(134, 185.5)];
    [bezier2Path addLineToPoint: CGPointMake(143.5, 187.75)];
    [bezier2Path addLineToPoint: CGPointMake(157, 190)];
    [bezier2Path addLineToPoint: CGPointMake(179, 197.5)];
    [bezier2Path moveToPoint: CGPointMake(169.5, 200)];
    [bezier2Path addLineToPoint: CGPointMake(182, 197.5)];
    [bezier2Path addLineToPoint: CGPointMake(192.5, 192)];
    [bezier2Path addLineToPoint: CGPointMake(206.5, 192)];
    [bezier2Path addLineToPoint: CGPointMake(221, 192)];
    [bezier2Path addLineToPoint: CGPointMake(241, 187.75)];
    [bezier2Path moveToPoint: CGPointMake(40.5, 221.5)];
    [bezier2Path addLineToPoint: CGPointMake(54.5, 221.5)];
    [bezier2Path addLineToPoint: CGPointMake(71.5, 218)];
    [bezier2Path addLineToPoint: CGPointMake(88.5, 221.5)];
    [bezier2Path addLineToPoint: CGPointMake(113, 224.5)];
    [bezier2Path addLineToPoint: CGPointMake(157, 229)];
    [bezier2Path moveToPoint: CGPointMake(124, 238.5)];
    [bezier2Path addLineToPoint: CGPointMake(147.5, 232.5)];
    [bezier2Path addLineToPoint: CGPointMake(169.5, 221.5)];
    [bezier2Path addLineToPoint: CGPointMake(182, 215)];
    [bezier2Path addLineToPoint: CGPointMake(200.5, 215)];
    [bezier2Path addLineToPoint: CGPointMake(222.5, 215)];
    [bezier2Path moveToPoint: CGPointMake(70, 245)];
    [bezier2Path addLineToPoint: CGPointMake(82.5, 242.5)];
    [bezier2Path addLineToPoint: CGPointMake(107, 245)];
    [bezier2Path addLineToPoint: CGPointMake(135, 246)];
    [bezier2Path addLineToPoint: CGPointMake(157, 246)];
    [bezier2Path addLineToPoint: CGPointMake(179, 238.5)];
    [bezier2Path addLineToPoint: CGPointMake(202, 236)];

    //    [_canvasColorsArray[1] setStroke];
    //    bezier2Path.lineWidth = 1;
    //    bezier2Path.miterLimit = 4;
    //    bezier2Path.lineCapStyle = kCGLineCapRound;
    //    [bezier2Path stroke];
    
    CAShapeLayer *shlayer2 = [CAShapeLayer new];
    shlayer2.path = [bezier2Path CGPath];
    shlayer2.fillColor = nil;
    shlayer2.strokeColor = [_canvasColorsArray[1] CGColor];
    shlayer2.lineWidth = 1;
    shlayer2.miterLimit = 4;
    shlayer2.strokeStart = 0;
    shlayer2.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer2];
    
    
    //// Bezier 3 Drawing
        UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(87.5, 133)];
        [bezier3Path addLineToPoint: CGPointMake(89.5, 139.5)];
        [bezier3Path addLineToPoint: CGPointMake(90.5, 150.5)];
        [bezier3Path addLineToPoint: CGPointMake(88, 169)];
        [bezier3Path addLineToPoint: CGPointMake(84.5, 186.5)];
        [bezier3Path addLineToPoint: CGPointMake(85, 196)];
        [bezier3Path addLineToPoint: CGPointMake(88, 204)];
        [bezier3Path moveToPoint: CGPointMake(92.5, 204)];
        [bezier3Path addLineToPoint: CGPointMake(93.5, 192.5)];
        [bezier3Path moveToPoint: CGPointMake(94.5, 188.5)];
        [bezier3Path addLineToPoint: CGPointMake(93.5, 176.5)];
        [bezier3Path addLineToPoint: CGPointMake(92.5, 168.5)];
        [bezier3Path addLineToPoint: CGPointMake(91.5, 161)];
        [bezier3Path moveToPoint: CGPointMake(100, 155.5)];
        [bezier3Path addLineToPoint: CGPointMake(102, 163.5)];
        [bezier3Path addLineToPoint: CGPointMake(103.5, 174)];
        [bezier3Path moveToPoint: CGPointMake(105, 164.5)];
        [bezier3Path addLineToPoint: CGPointMake(105.5, 170.5)];
        [bezier3Path addLineToPoint: CGPointMake(108, 179.5)];
        [bezier3Path addLineToPoint: CGPointMake(110.5, 185.5)];
        [bezier3Path moveToPoint: CGPointMake(109, 174)];
        [bezier3Path addLineToPoint: CGPointMake(109.5, 178.5)];
        [bezier3Path addLineToPoint: CGPointMake(113, 184.5)];
        [bezier3Path moveToPoint: CGPointMake(122, 162)];
        [bezier3Path addLineToPoint: CGPointMake(123, 169)];
        [bezier3Path addLineToPoint: CGPointMake(124.5, 176)];
        [bezier3Path addLineToPoint: CGPointMake(127, 181.5)];
        [bezier3Path moveToPoint: CGPointMake(130.5, 183)];
        [bezier3Path addLineToPoint: CGPointMake(127.5, 177)];
        [bezier3Path addLineToPoint: CGPointMake(126, 172)];
        [bezier3Path addLineToPoint: CGPointMake(125.5, 167)];
        [bezier3Path moveToPoint: CGPointMake(123, 176)];
        [bezier3Path addLineToPoint: CGPointMake(121, 170)];
        [bezier3Path addLineToPoint: CGPointMake(120, 164)];
        [bezier3Path addLineToPoint: CGPointMake(119.5, 156)];
        [bezier3Path addLineToPoint: CGPointMake(120, 149)];
        [bezier3Path moveToPoint: CGPointMake(63, 138.5)];
        [bezier3Path addLineToPoint: CGPointMake(60.5, 146)];
        [bezier3Path addLineToPoint: CGPointMake(59.5, 153)];
        [bezier3Path addLineToPoint: CGPointMake(59.5, 161)];
        [bezier3Path moveToPoint: CGPointMake(57.5, 155.5)];
        [bezier3Path addLineToPoint: CGPointMake(58, 147.5)];
        [bezier3Path addLineToPoint: CGPointMake(60.5, 138.5)];
        [bezier3Path addLineToPoint: CGPointMake(64, 131)];
        [bezier3Path moveToPoint: CGPointMake(66.5, 120)];
        [bezier3Path addLineToPoint: CGPointMake(62.5, 126)];
        [bezier3Path addLineToPoint: CGPointMake(59.5, 132)];
        [bezier3Path moveToPoint: CGPointMake(22.5, 161)];
        [bezier3Path addLineToPoint: CGPointMake(20.5, 169)];
        [bezier3Path addLineToPoint: CGPointMake(17.5, 176.5)];
        [bezier3Path addLineToPoint: CGPointMake(14.5, 182)];
        [bezier3Path moveToPoint: CGPointMake(25.5, 161)];
        [bezier3Path addLineToPoint: CGPointMake(23.5, 168.5)];
        [bezier3Path addLineToPoint: CGPointMake(20, 177.5)];
        [bezier3Path moveToPoint: CGPointMake(27, 153)];
        [bezier3Path addLineToPoint: CGPointMake(26, 158.5)];
        [bezier3Path moveToPoint: CGPointMake(40.5, 139.5)];
        [bezier3Path addLineToPoint: CGPointMake(38, 149)];
        [bezier3Path moveToPoint: CGPointMake(39.5, 152)];
        [bezier3Path addLineToPoint: CGPointMake(38, 158.5)];
        [bezier3Path addLineToPoint: CGPointMake(37.5, 166)];
        [bezier3Path moveToPoint: CGPointMake(36.5, 154.5)];
        [bezier3Path addLineToPoint: CGPointMake(35.5, 164)];
        [bezier3Path moveToPoint: CGPointMake(46.5, 167)];
        [bezier3Path addLineToPoint: CGPointMake(47, 173)];
        [bezier3Path moveToPoint: CGPointMake(48.5, 174)];
        [bezier3Path addLineToPoint: CGPointMake(48.5, 188.5)];
        [bezier3Path moveToPoint: CGPointMake(64, 154.5)];
        [bezier3Path addLineToPoint: CGPointMake(64.5, 165.5)];
        [bezier3Path addLineToPoint: CGPointMake(65.5, 174)];
        [bezier3Path moveToPoint: CGPointMake(175.5, 121)];
        [bezier3Path addLineToPoint: CGPointMake(176, 125.5)];
        [bezier3Path addLineToPoint: CGPointMake(178.5, 132)];
        [bezier3Path addLineToPoint: CGPointMake(179.04, 134.5)];
        [bezier3Path moveToPoint: CGPointMake(178.5, 146.5)];
        [bezier3Path addLineToPoint: CGPointMake(180, 139)];
        [bezier3Path addLineToPoint: CGPointMake(179.04, 134.5)];
        [bezier3Path moveToPoint: CGPointMake(180, 120.5)];
        [bezier3Path addLineToPoint: CGPointMake(179.5, 126.5)];
        [bezier3Path addLineToPoint: CGPointMake(179.04, 134.5)];
        [bezier3Path moveToPoint: CGPointMake(191.5, 113.5)];
        [bezier3Path addLineToPoint: CGPointMake(189.5, 121)];
        [bezier3Path addLineToPoint: CGPointMake(187.5, 128.5)];
        [bezier3Path moveToPoint: CGPointMake(210, 124)];
        [bezier3Path addLineToPoint: CGPointMake(211.5, 133.5)];
        [bezier3Path addLineToPoint: CGPointMake(217.5, 146.5)];
        [bezier3Path moveToPoint: CGPointMake(189.5, 168.5)];
        [bezier3Path addLineToPoint: CGPointMake(194, 176)];
        [bezier3Path addLineToPoint: CGPointMake(199, 181.5)];
        [bezier3Path moveToPoint: CGPointMake(187.5, 182)];
        [bezier3Path addLineToPoint: CGPointMake(182, 178.5)];
        [bezier3Path moveToPoint: CGPointMake(237.5, 131)];
        [bezier3Path addLineToPoint: CGPointMake(237.5, 134.5)];
        [bezier3Path moveToPoint: CGPointMake(242, 133.5)];
        [bezier3Path addLineToPoint: CGPointMake(242, 138.5)];
        [bezier3Path addLineToPoint: CGPointMake(244.5, 142.5)];
        [bezier3Path moveToPoint: CGPointMake(103.5, 116)];
        [bezier3Path addLineToPoint: CGPointMake(105.5, 125.5)];
        [bezier3Path addLineToPoint: CGPointMake(110.5, 128.5)];
        [bezier3Path addLineToPoint: CGPointMake(113, 134.5)];
        [bezier3Path moveToPoint: CGPointMake(203, 96.5)];
        [bezier3Path addLineToPoint: CGPointMake(205, 100)];
        [bezier3Path addLineToPoint: CGPointMake(205, 104)];
        [bezier3Path moveToPoint: CGPointMake(199, 102.5)];
        [bezier3Path addLineToPoint: CGPointMake(197.5, 112.5)];
        [bezier3Path moveToPoint: CGPointMake(207.5, 176)];
        [bezier3Path addLineToPoint: CGPointMake(210, 177.5)];
        [bezier3Path addLineToPoint: CGPointMake(215, 179.5)];
        [bezier3Path addLineToPoint: CGPointMake(223.5, 186.5)];
        [bezier3Path moveToPoint: CGPointMake(143.5, 154.5)];
        [bezier3Path addLineToPoint: CGPointMake(146, 161)];
        [bezier3Path addLineToPoint: CGPointMake(152.5, 168.5)];

    //    [_canvasColorsArray[2] setStroke];
    //    bezier3Path.lineWidth = 1;
    //    bezier3Path.miterLimit = 4;
    //    bezier3Path.lineCapStyle = kCGLineCapRound;
    //    [bezier3Path stroke];
    
    CAShapeLayer *shlayer3 = [CAShapeLayer new];
    shlayer3.path = [bezier3Path CGPath];
    shlayer3.fillColor = nil;
    shlayer3.strokeColor = [_canvasColorsArray[2] CGColor];
    shlayer3.lineWidth = 1;
    shlayer3.miterLimit = 4;
    shlayer3.strokeStart = 0;
    shlayer3.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer3];
}
-(void)createPlanetLayers{
    //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(38.5, 133)];
        [bezierPath addLineToPoint: CGPointMake(29.5, 137)];
        [bezierPath addLineToPoint: CGPointMake(20.5, 144)];
        [bezierPath addLineToPoint: CGPointMake(12, 152)];
        [bezierPath addLineToPoint: CGPointMake(6, 160)];
        [bezierPath addLineToPoint: CGPointMake(4, 168)];
        [bezierPath addLineToPoint: CGPointMake(5, 176)];
        [bezierPath addLineToPoint: CGPointMake(9, 182.5)];
        [bezierPath addLineToPoint: CGPointMake(16, 188)];
        [bezierPath addLineToPoint: CGPointMake(26.5, 192.5)];
        [bezierPath addLineToPoint: CGPointMake(37.5, 195)];
        [bezierPath addLineToPoint: CGPointMake(49, 196)];
        [bezierPath addLineToPoint: CGPointMake(60, 196.5)];
        [bezierPath addLineToPoint: CGPointMake(66.5, 196.3)];
        [bezierPath moveToPoint: CGPointMake(38.5, 133)];
        [bezierPath addLineToPoint: CGPointMake(39, 126)];
        [bezierPath addLineToPoint: CGPointMake(41.5, 113.5)];
        [bezierPath addLineToPoint: CGPointMake(45, 103)];
        [bezierPath addLineToPoint: CGPointMake(49.5, 91.5)];
        [bezierPath addLineToPoint: CGPointMake(55, 83)];
        [bezierPath addLineToPoint: CGPointMake(62, 73.5)];
        [bezierPath addLineToPoint: CGPointMake(70, 66)];
        [bezierPath addLineToPoint: CGPointMake(78, 60.5)];
        [bezierPath addLineToPoint: CGPointMake(86.5, 55.5)];
        [bezierPath addCurveToPoint: CGPointMake(98, 50.5) controlPoint1: CGPointMake(90.17, 54) controlPoint2: CGPointMake(97.6, 50.9)];
        [bezierPath addCurveToPoint: CGPointMake(109, 47) controlPoint1: CGPointMake(98.4, 50.1) controlPoint2: CGPointMake(105.5, 48)];
        [bezierPath addLineToPoint: CGPointMake(125.5, 45.5)];
        [bezierPath addLineToPoint: CGPointMake(139.5, 46.5)];
        [bezierPath addLineToPoint: CGPointMake(153.5, 49)];
        [bezierPath addLineToPoint: CGPointMake(166, 54)];
        [bezierPath addLineToPoint: CGPointMake(178, 61.5)];
        [bezierPath addLineToPoint: CGPointMake(186.5, 68.5)];
        [bezierPath addLineToPoint: CGPointMake(193.5, 75.5)];
        [bezierPath addLineToPoint: CGPointMake(199.5, 82.5)];
        [bezierPath moveToPoint: CGPointMake(38.5, 133)];
        [bezierPath addLineToPoint: CGPointMake(38.5, 139.5)];
        [bezierPath addLineToPoint: CGPointMake(39.5, 147)];
        [bezierPath moveToPoint: CGPointMake(199.5, 82.5)];
        [bezierPath addLineToPoint: CGPointMake(208.5, 81)];
        [bezierPath addLineToPoint: CGPointMake(220.5, 80.5)];
        [bezierPath addLineToPoint: CGPointMake(232, 82)];
        [bezierPath addLineToPoint: CGPointMake(242.5, 86)];
        [bezierPath addLineToPoint: CGPointMake(249.5, 91.5)];
        [bezierPath addLineToPoint: CGPointMake(252, 99)];
        [bezierPath addLineToPoint: CGPointMake(251.5, 108)];
        [bezierPath addLineToPoint: CGPointMake(248, 116.5)];
        [bezierPath addLineToPoint: CGPointMake(237.5, 130)];
        [bezierPath addLineToPoint: CGPointMake(229, 138.5)];
        [bezierPath addLineToPoint: CGPointMake(216, 148.5)];
        [bezierPath addLineToPoint: CGPointMake(212.67, 150.5)];
        [bezierPath moveToPoint: CGPointMake(199.5, 82.5)];
        [bezierPath addLineToPoint: CGPointMake(203, 87.5)];
        [bezierPath addLineToPoint: CGPointMake(206, 94)];
        [bezierPath moveToPoint: CGPointMake(39.5, 147)];
        [bezierPath addLineToPoint: CGPointMake(35.5, 149.5)];
        [bezierPath addLineToPoint: CGPointMake(32, 154)];
        [bezierPath addLineToPoint: CGPointMake(30.5, 159)];
        [bezierPath addLineToPoint: CGPointMake(31, 164)];
        [bezierPath addLineToPoint: CGPointMake(33.5, 168)];
        [bezierPath addLineToPoint: CGPointMake(38.5, 171)];
        [bezierPath addLineToPoint: CGPointMake(46, 174)];
        [bezierPath addLineToPoint: CGPointMake(48.5, 174.47)];
        [bezierPath moveToPoint: CGPointMake(39.5, 147)];
        [bezierPath addLineToPoint: CGPointMake(42, 155.5)];
        [bezierPath addLineToPoint: CGPointMake(44.5, 164)];
        [bezierPath addLineToPoint: CGPointMake(48.5, 174.47)];
        [bezierPath moveToPoint: CGPointMake(206, 94)];
        [bezierPath addLineToPoint: CGPointMake(212.5, 94)];
        [bezierPath addLineToPoint: CGPointMake(220.5, 97)];
        [bezierPath addLineToPoint: CGPointMake(223.5, 101)];
        [bezierPath addLineToPoint: CGPointMake(224, 107)];
        [bezierPath addLineToPoint: CGPointMake(222.5, 112.5)];
        [bezierPath addLineToPoint: CGPointMake(218.5, 118)];
        [bezierPath addLineToPoint: CGPointMake(214.83, 122)];
        [bezierPath moveToPoint: CGPointMake(206, 94)];
        [bezierPath addLineToPoint: CGPointMake(209, 101)];
        [bezierPath addLineToPoint: CGPointMake(212.67, 112.5)];
        [bezierPath addLineToPoint: CGPointMake(214.83, 122)];
        [bezierPath moveToPoint: CGPointMake(66.5, 196.3)];
        [bezierPath addLineToPoint: CGPointMake(76.5, 196)];
        [bezierPath addLineToPoint: CGPointMake(97.5, 193.5)];
        [bezierPath addLineToPoint: CGPointMake(115, 190)];
        [bezierPath addLineToPoint: CGPointMake(130.5, 186)];
        [bezierPath addLineToPoint: CGPointMake(150, 180)];
        [bezierPath addLineToPoint: CGPointMake(169.5, 172.5)];
        [bezierPath addLineToPoint: CGPointMake(185, 165.5)];
        [bezierPath addLineToPoint: CGPointMake(201, 157.5)];
        [bezierPath addLineToPoint: CGPointMake(212.67, 150.5)];
        [bezierPath moveToPoint: CGPointMake(66.5, 196.3)];
        [bezierPath addLineToPoint: CGPointMake(71.5, 202)];
        [bezierPath addLineToPoint: CGPointMake(79.5, 208)];
        [bezierPath addLineToPoint: CGPointMake(88.5, 212.5)];
        [bezierPath addLineToPoint: CGPointMake(97.5, 216)];
        [bezierPath addLineToPoint: CGPointMake(108.5, 219.5)];
        [bezierPath addLineToPoint: CGPointMake(121, 221.5)];
        [bezierPath addLineToPoint: CGPointMake(133, 221.5)];
        [bezierPath addLineToPoint: CGPointMake(144, 220.5)];
        [bezierPath addLineToPoint: CGPointMake(153.5, 218)];
        [bezierPath addLineToPoint: CGPointMake(161, 215)];
        [bezierPath addLineToPoint: CGPointMake(170.5, 210.5)];
        [bezierPath addLineToPoint: CGPointMake(178, 205.5)];
        [bezierPath addLineToPoint: CGPointMake(184, 201)];
        [bezierPath addLineToPoint: CGPointMake(192, 192.5)];
        [bezierPath addLineToPoint: CGPointMake(200, 182.5)];
        [bezierPath addLineToPoint: CGPointMake(205.5, 173)];
        [bezierPath addLineToPoint: CGPointMake(210.5, 161)];
        [bezierPath addLineToPoint: CGPointMake(212.67, 150.5)];
        [bezierPath moveToPoint: CGPointMake(214.83, 122)];
        [bezierPath addLineToPoint: CGPointMake(213, 124)];
        [bezierPath addLineToPoint: CGPointMake(208, 129)];
        [bezierPath addLineToPoint: CGPointMake(202, 133.5)];
        [bezierPath addLineToPoint: CGPointMake(194.5, 138.5)];
        [bezierPath addLineToPoint: CGPointMake(187.5, 143)];
        [bezierPath addLineToPoint: CGPointMake(180.5, 147)];
        [bezierPath addLineToPoint: CGPointMake(173.5, 150.5)];
        [bezierPath addLineToPoint: CGPointMake(164.5, 155)];
        [bezierPath addLineToPoint: CGPointMake(153, 160)];
        [bezierPath addLineToPoint: CGPointMake(141.5, 164)];
        [bezierPath addLineToPoint: CGPointMake(129.5, 167.5)];
        [bezierPath addLineToPoint: CGPointMake(118, 170.5)];
        [bezierPath addLineToPoint: CGPointMake(106, 173)];
        [bezierPath addLineToPoint: CGPointMake(94, 175)];
        [bezierPath addLineToPoint: CGPointMake(82, 176)];
        [bezierPath addLineToPoint: CGPointMake(70.5, 176.5)];
        [bezierPath addLineToPoint: CGPointMake(61.5, 176)];
        [bezierPath addLineToPoint: CGPointMake(54, 175.5)];
        [bezierPath addLineToPoint: CGPointMake(48.5, 174.47)];

    
    CAShapeLayer *shlayer = [CAShapeLayer new];
    shlayer.path = [bezierPath CGPath];
    shlayer.fillColor = nil;
    shlayer.strokeColor = [_canvasColorsArray[0] CGColor];
    shlayer.lineWidth = 1;
    shlayer.miterLimit = 4;
    shlayer.strokeStart = 0;
    shlayer.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer];
    
    
    //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(134, 93.5)];
        [bezier2Path addLineToPoint: CGPointMake(140, 90.5)];
        [bezier2Path addLineToPoint: CGPointMake(149.5, 85)];
        [bezier2Path addLineToPoint: CGPointMake(159, 78)];
        [bezier2Path addLineToPoint: CGPointMake(165.5, 71)];
        [bezier2Path addLineToPoint: CGPointMake(169.5, 64)];
        [bezier2Path addLineToPoint: CGPointMake(172, 58)];
        [bezier2Path moveToPoint: CGPointMake(87.5, 72)];
        [bezier2Path addLineToPoint: CGPointMake(80.5, 71.5)];
        [bezier2Path addLineToPoint: CGPointMake(74.5, 69.5)];
        [bezier2Path addLineToPoint: CGPointMake(69.5, 66.5)];
        [bezier2Path moveToPoint: CGPointMake(98, 70.5)];
        [bezier2Path addLineToPoint: CGPointMake(105.5, 68.5)];
        [bezier2Path addLineToPoint: CGPointMake(113.5, 66)];
        [bezier2Path addLineToPoint: CGPointMake(121.5, 61.5)];
        [bezier2Path addCurveToPoint: CGPointMake(129, 56) controlPoint1: CGPointMake(123.83, 59.83) controlPoint2: CGPointMake(128.6, 56.4)];
        [bezier2Path addCurveToPoint: CGPointMake(133.5, 51) controlPoint1: CGPointMake(129.4, 55.6) controlPoint2: CGPointMake(132.17, 52.5)];
        [bezier2Path addLineToPoint: CGPointMake(135.5, 46.5)];
        [bezier2Path moveToPoint: CGPointMake(75.5, 87.5)];
        [bezier2Path addLineToPoint: CGPointMake(80, 88.5)];
        [bezier2Path addLineToPoint: CGPointMake(87.5, 88.5)];
        [bezier2Path addLineToPoint: CGPointMake(95.5, 87.5)];
        [bezier2Path addLineToPoint: CGPointMake(102.5, 86)];
        [bezier2Path addLineToPoint: CGPointMake(111, 84)];
        [bezier2Path moveToPoint: CGPointMake(81, 107)];
        [bezier2Path addCurveToPoint: CGPointMake(85, 106.5) controlPoint1: CGPointMake(81.4, 107) controlPoint2: CGPointMake(83.83, 106.67)];
        [bezier2Path addLineToPoint: CGPointMake(89.5, 106)];
        [bezier2Path addLineToPoint: CGPointMake(93.5, 105)];
        [bezier2Path moveToPoint: CGPointMake(72.5, 106.5)];
        [bezier2Path addLineToPoint: CGPointMake(65, 106)];
        [bezier2Path addLineToPoint: CGPointMake(58, 103.5)];
        [bezier2Path addCurveToPoint: CGPointMake(51.5, 100.5) controlPoint1: CGPointMake(56, 102.5) controlPoint2: CGPointMake(51.9, 100.5)];
        [bezier2Path addCurveToPoint: CGPointMake(47, 98) controlPoint1: CGPointMake(51.1, 100.5) controlPoint2: CGPointMake(48.33, 98.83)];
        [bezier2Path moveToPoint: CGPointMake(64.5, 145.5)];
        [bezier2Path addLineToPoint: CGPointMake(56.5, 144)];
        [bezier2Path addLineToPoint: CGPointMake(47.5, 140.5)];
        [bezier2Path addLineToPoint: CGPointMake(38.5, 135)];
        [bezier2Path moveToPoint: CGPointMake(84.5, 145.5)];
        [bezier2Path addLineToPoint: CGPointMake(90, 145.5)];
        [bezier2Path addLineToPoint: CGPointMake(94.5, 145)];
        [bezier2Path addLineToPoint: CGPointMake(103.5, 143.5)];
        [bezier2Path addLineToPoint: CGPointMake(114, 141)];
        [bezier2Path addLineToPoint: CGPointMake(123.5, 138.5)];
        [bezier2Path addLineToPoint: CGPointMake(133, 135.5)];
        [bezier2Path addLineToPoint: CGPointMake(142.5, 132.5)];
        [bezier2Path addLineToPoint: CGPointMake(152.5, 128)];
        [bezier2Path addLineToPoint: CGPointMake(162, 123.5)];
        [bezier2Path addLineToPoint: CGPointMake(170, 118.5)];
        [bezier2Path addLineToPoint: CGPointMake(176, 114.5)];
        [bezier2Path addLineToPoint: CGPointMake(181.5, 111)];
        [bezier2Path moveToPoint: CGPointMake(190, 103)];
        [bezier2Path addLineToPoint: CGPointMake(194, 98)];
        [bezier2Path addLineToPoint: CGPointMake(197.5, 92)];
        [bezier2Path addLineToPoint: CGPointMake(200.5, 84.5)];
        [bezier2Path moveToPoint: CGPointMake(103.5, 124)];
        [bezier2Path addLineToPoint: CGPointMake(111.5, 122)];
        [bezier2Path addLineToPoint: CGPointMake(124.5, 118)];
        [bezier2Path addLineToPoint: CGPointMake(133, 115)];
        [bezier2Path addLineToPoint: CGPointMake(142, 111)];
        [bezier2Path addLineToPoint: CGPointMake(149.5, 107.5)];
        [bezier2Path addLineToPoint: CGPointMake(156, 104)];
        [bezier2Path moveToPoint: CGPointMake(64.5, 163)];
        [bezier2Path addLineToPoint: CGPointMake(71.5, 163.5)];
        [bezier2Path addLineToPoint: CGPointMake(79, 163.5)];
        [bezier2Path addLineToPoint: CGPointMake(87, 162.5)];
        [bezier2Path moveToPoint: CGPointMake(168.5, 138.5)];
        [bezier2Path addLineToPoint: CGPointMake(174.5, 136.5)];
        [bezier2Path addLineToPoint: CGPointMake(182, 132)];
        [bezier2Path addLineToPoint: CGPointMake(191, 125)];
        [bezier2Path addLineToPoint: CGPointMake(197, 120.5)];
        [bezier2Path addLineToPoint: CGPointMake(201, 116)];
        [bezier2Path moveToPoint: CGPointMake(145, 192.5)];
        [bezier2Path addLineToPoint: CGPointMake(149.5, 191.5)];
        [bezier2Path addLineToPoint: CGPointMake(158.5, 188)];
        [bezier2Path addLineToPoint: CGPointMake(166.5, 184.5)];
        [bezier2Path addLineToPoint: CGPointMake(173, 181.5)];
        [bezier2Path addLineToPoint: CGPointMake(179, 178.5)];
        [bezier2Path addLineToPoint: CGPointMake(181.5, 175.5)];
        [bezier2Path moveToPoint: CGPointMake(186.5, 188)];
        [bezier2Path addLineToPoint: CGPointMake(192.5, 184.5)];
        [bezier2Path addLineToPoint: CGPointMake(198, 180.5)];
        [bezier2Path addLineToPoint: CGPointMake(205.5, 173)];
        [bezier2Path moveToPoint: CGPointMake(176, 194)];
        [bezier2Path addLineToPoint: CGPointMake(168.5, 197.5)];
        [bezier2Path addLineToPoint: CGPointMake(158, 201.5)];
        [bezier2Path addLineToPoint: CGPointMake(148, 205)];
        [bezier2Path addLineToPoint: CGPointMake(137, 208)];
        [bezier2Path addLineToPoint: CGPointMake(126.5, 210.5)];
        [bezier2Path addLineToPoint: CGPointMake(112.5, 212)];
        [bezier2Path addLineToPoint: CGPointMake(99, 212.5)];
        [bezier2Path addLineToPoint: CGPointMake(87.5, 212)];

    
    CAShapeLayer *shlayer2 = [CAShapeLayer new];
    shlayer2.path = [bezier2Path CGPath];
    shlayer2.fillColor = nil;
    shlayer2.strokeColor = [_canvasColorsArray[1] CGColor];
    shlayer2.lineWidth = 1;
    shlayer2.miterLimit = 4;
    shlayer2.strokeStart = 0;
    shlayer2.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer2];
    
    
    ///// Bezier 3 Drawing
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(230.5, 160)];
    [bezier3Path addLineToPoint: CGPointMake(235.5, 156.5)];
    [bezier3Path addLineToPoint: CGPointMake(242.5, 157)];
    [bezier3Path addLineToPoint: CGPointMake(247, 160.5)];
    [bezier3Path addLineToPoint: CGPointMake(248.5, 165.5)];
    [bezier3Path addLineToPoint: CGPointMake(247.5, 170)];
    [bezier3Path addLineToPoint: CGPointMake(244.5, 174.5)];
    [bezier3Path addLineToPoint: CGPointMake(239.5, 176)];
    [bezier3Path addLineToPoint: CGPointMake(233.5, 175)];
    [bezier3Path addLineToPoint: CGPointMake(229.5, 171)];
    [bezier3Path addLineToPoint: CGPointMake(228, 166)];
    [bezier3Path addLineToPoint: CGPointMake(230.5, 160)];
    [bezier3Path closePath];
    /// Bezier 4 Drawing
    [bezier3Path moveToPoint: CGPointMake(218, 190)];
    [bezier3Path addLineToPoint: CGPointMake(220, 188)];
    [bezier3Path addLineToPoint: CGPointMake(222.5, 188)];
    [bezier3Path addLineToPoint: CGPointMake(224.5, 189.5)];
    [bezier3Path addLineToPoint: CGPointMake(225, 192)];
    [bezier3Path addLineToPoint: CGPointMake(224, 194)];
    [bezier3Path addLineToPoint: CGPointMake(221.5, 195)];
    [bezier3Path addLineToPoint: CGPointMake(219, 194.5)];
    [bezier3Path addLineToPoint: CGPointMake(217.5, 192.5)];
    [bezier3Path addLineToPoint: CGPointMake(218, 190)];
    [bezier3Path closePath];
    //// Bezier 5 Drawing
    [bezier3Path moveToPoint: CGPointMake(52.5, 221)];
    [bezier3Path addLineToPoint: CGPointMake(54.5, 220)];
    [bezier3Path addLineToPoint: CGPointMake(57.5, 221)];
    [bezier3Path addCurveToPoint: CGPointMake(59, 223.5) controlPoint1: CGPointMake(58, 221.67) controlPoint2: CGPointMake(59, 223.1)];
    [bezier3Path addCurveToPoint: CGPointMake(59, 226.5) controlPoint1: CGPointMake(59, 223.9) controlPoint2: CGPointMake(59.17, 225.83)];
    [bezier3Path addLineToPoint: CGPointMake(56.5, 228)];
    [bezier3Path addLineToPoint: CGPointMake(53, 228)];
    [bezier3Path addLineToPoint: CGPointMake(51.5, 226)];
    [bezier3Path addLineToPoint: CGPointMake(51, 223.5)];
    [bezier3Path addLineToPoint: CGPointMake(52.5, 221)];
    [bezier3Path closePath];
    [bezier3Path moveToPoint: CGPointMake(13.5, 55.5)];
    [bezier3Path addCurveToPoint: CGPointMake(19.5, 51) controlPoint1: CGPointMake(15.33, 54) controlPoint2: CGPointMake(19.1, 51)];
    [bezier3Path addLineToPoint: CGPointMake(26, 50)];
    [bezier3Path addLineToPoint: CGPointMake(32.5, 52)];
    [bezier3Path addLineToPoint: CGPointMake(38.5, 59)];
    [bezier3Path addLineToPoint: CGPointMake(39, 68.5)];
    [bezier3Path addLineToPoint: CGPointMake(35, 76)];
    [bezier3Path addLineToPoint: CGPointMake(26.5, 80)];
    [bezier3Path addLineToPoint: CGPointMake(17.5, 78)];
    [bezier3Path addLineToPoint: CGPointMake(11.5, 73.5)];
    [bezier3Path addLineToPoint: CGPointMake(9.5, 64.5)];
    [bezier3Path addLineToPoint: CGPointMake(13.5, 55.5)];
    [bezier3Path closePath];
    [bezier3Path moveToPoint: CGPointMake(195, 30)];
    [bezier3Path addCurveToPoint: CGPointMake(200.5, 29) controlPoint1: CGPointMake(196, 29.67) controlPoint2: CGPointMake(200.1, 29)];
    [bezier3Path addLineToPoint: CGPointMake(205, 32)];
    [bezier3Path addLineToPoint: CGPointMake(205.5, 37)];
    [bezier3Path addLineToPoint: CGPointMake(203.5, 41)];
    [bezier3Path addLineToPoint: CGPointMake(198.5, 42.5)];
    [bezier3Path addLineToPoint: CGPointMake(193.5, 40)];
    [bezier3Path addLineToPoint: CGPointMake(192, 34.5)];
    [bezier3Path addLineToPoint: CGPointMake(195, 30)];
    [bezier3Path closePath];



    
    CAShapeLayer *shlayer3 = [CAShapeLayer new];
    shlayer3.path = [bezier3Path CGPath];
    shlayer3.fillColor = nil;
    shlayer3.strokeColor = [_canvasColorsArray[2] CGColor];
    shlayer3.lineWidth = 1;
    shlayer3.miterLimit = 4;
    shlayer3.strokeStart = 0;
    shlayer3.strokeEnd = _strokeEndCounter;
    
    [self.layer addSublayer:shlayer3];
}

@end