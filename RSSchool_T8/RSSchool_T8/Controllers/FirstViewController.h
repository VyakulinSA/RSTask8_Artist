//
//  FirstViewController.h
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 17.07.2021.
//

#import <UIKit/UIKit.h>
#import "ModalViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface FirstViewController : UIViewController

@property (nonatomic) ModalViewController *modalVC;
@property (nonatomic) NSMutableArray<UIButton*> *canvasButtonsArray;
@property (nonatomic) NSMutableArray<UIColor*> *canvasColorsArray;

@end

NS_ASSUME_NONNULL_END
