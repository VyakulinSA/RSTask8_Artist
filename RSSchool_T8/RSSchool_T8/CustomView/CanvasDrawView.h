//
//  CanvasDrawView.h
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 19.07.2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CanvasDrawView : UIView
@property (nonatomic) NSMutableArray<UIColor*> *canvasColorsArray;
@property CGFloat strokeEndCounter;
@property NSMutableString *layersName;

@end

NS_ASSUME_NONNULL_END
