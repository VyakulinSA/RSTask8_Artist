//
//  FirstViewController.h
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 17.07.2021.
//

#import <UIKit/UIKit.h>
#import "ModalViewController.h"

NS_ASSUME_NONNULL_BEGIN

@class TimerViewController;

@interface FirstViewController : UIViewController

@property (nonatomic) ModalViewController *modalVC;
@property (nonatomic) TimerViewController *timerVC;
@property (nonatomic) NSMutableArray<UIButton*> *canvasButtonsArray;
@property (nonatomic) NSMutableArray<UIColor*> *canvasColorsArray;
@property float timerInterval;
@property NSMutableString *canvasLayersName;

@end

NS_ASSUME_NONNULL_END
