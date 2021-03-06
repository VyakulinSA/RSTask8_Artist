//
//  ModalViewController.h
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 17.07.2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ModalViewDelegate
@property (nonatomic) NSMutableArray<UIButton*> *canvasButtonsArray;

-(void) closeModalView;
-(void) closeTimerView;

@end

@interface ModalViewController : UIViewController

@property (weak, nonatomic) id<ModalViewDelegate> delegate;
@property (nonatomic) NSMutableArray<UIButton*> *paletteColorsArray;
@property NSTimer *paletteTimer;
@property BOOL fastCheckPalette;

-(void)preSettPaletteButtons;
-(void)uncheckPaletteButton:(UIButton *)paletteButton;

@end

NS_ASSUME_NONNULL_END
