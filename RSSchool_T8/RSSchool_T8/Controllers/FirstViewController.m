//
//  FirstViewController.m
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 17.07.2021.
//

#import "FirstViewController.h"
#import "CanvasDrawView.h"
#import "RSSchool_T8-Swift.h"
#import "CustomButtons.h"

@interface FirstViewController () <ModalViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *canvasView;
@property (weak, nonatomic) IBOutlet CanvasDrawView *canvasDrawView;
@property (weak, nonatomic) IBOutlet CustomButtons *openPaletteButton;
@property (weak, nonatomic) IBOutlet CustomButtons *openTimerButton;
@property (weak, nonatomic) IBOutlet CustomButtons *drawButton;
@property (weak, nonatomic) IBOutlet CustomButtons *resetButton;
@property (weak, nonatomic) IBOutlet CustomButtons *shareButton;

@end

@implementation FirstViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.canvasLayersName == nil){
        self.canvasLayersName = [NSMutableString stringWithString:@"head"];
    }
    
    _shareButton.enabled = false;
    _shareButton.layer.opacity = 0.5;
    _resetButton.hidden = true;
    
    _timerInterval = 1.0;
    
    _modalVC = [ModalViewController new];
    _modalVC.delegate = self;
    
    _timerVC = [TimerViewController new];
    _timerVC.delegate = self;
    
    [_openPaletteButton addTarget:self action:@selector(openPaletteTapped:) forControlEvents:UIControlEventTouchUpInside];
    [_openTimerButton addTarget:self action:@selector(openTimerTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    [_drawButton addTarget:self action:@selector(drawButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    [_resetButton addTarget:self action:@selector(resetButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    [_shareButton addTarget:self action:@selector(shareButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)viewWillAppear:(BOOL)animated{
    [self preSettElements];
}

-(void)openPaletteTapped:(UIButton *)sender{
//    получаем у объекта всплывающих окон view и отображаем ее в текущем контролере по верх остальных на половину экрана
    _modalVC.view.frame = CGRectMake(0, self.view.frame.size.height - 333.5, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:_modalVC.view];
}

-(void)openTimerTapped:(UIButton *)sender{
    _timerVC.view.frame = CGRectMake(0, self.view.frame.size.height - 333.5, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:_timerVC.view];
}

-(void)drawButtonTapped:(UIButton *)button{
//    отправляем в свойство для отрисовки название макета
    _canvasDrawView.layersName = [NSMutableString stringWithString:self.canvasLayersName];
//    передаем цвета текущие выбранные
    _canvasDrawView.canvasColorsArray = _canvasColorsArray;
//    расчитывает шаг отрисовки
    CGFloat stepInterval = 1 / (60 * _timerInterval);
//    меняем состояния кнопок во время отрисовки
    _openPaletteButton.enabled = false;
    _openPaletteButton.layer.opacity = 0.5;
    _openTimerButton.enabled = false;
    _openTimerButton.layer.opacity = 0.5;
    _drawButton.enabled = false;
    _drawButton.layer.opacity = 0.5;
//    запускаем таймер для отрисовки
    __block NSTimer *ctimer = [NSTimer scheduledTimerWithTimeInterval:0.01 repeats:true block:^(NSTimer * _Nonnull timer) {
//        увеличиваем шаг каждый раз при срабатывании таймера
        self.canvasDrawView.strokeEndCounter = self.canvasDrawView.strokeEndCounter + stepInterval;
//        перерисовываем картинку
        [self.canvasDrawView setNeedsDisplay];
        if (self.canvasDrawView.strokeEndCounter > 1.1){
//            как только дошли до конца, отключаем таймер и задаем настройки кнопкам, после отрисовки
            [ctimer invalidate];
            self.canvasDrawView.strokeEndCounter = 0;
            self.drawButton.hidden = true;
            self.resetButton.hidden = false;
            self.shareButton.enabled = true;
            self.shareButton.layer.opacity = 1;
        }
    }];
}

-(void)resetButtonTapped:(UIButton *)button{
    _openPaletteButton.enabled = true;
    _openPaletteButton.layer.opacity = 1;
    _openTimerButton.enabled = true;
    _openTimerButton.layer.opacity = 1;
    _drawButton.enabled = true;
    _drawButton.layer.opacity = 1;
    _drawButton.hidden = false;
    _resetButton.hidden = true;
    _shareButton.enabled = false;
    _shareButton.layer.opacity = 0.5;
    
    _canvasDrawView.layer.sublayers = nil;

}

-(void)shareButtonTapped:(UIButton *)button{
//    для сохранения изображения, создаем квадрат видимости
    CGRect rect = _canvasDrawView.bounds;
//    создаем контекст для считывания и отрисовки изображения
    UIGraphicsBeginImageContextWithOptions(rect.size, _canvasDrawView.opaque, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
//    передаем слой рендериться в контекст
    [_canvasDrawView.layer renderInContext:context];
//    получаем изображение со слоя
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSArray *imageArr = @[img];
    
    UIActivityViewController *activeVC = [[UIActivityViewController alloc] initWithActivityItems:imageArr applicationActivities:nil];
    activeVC.modalPresentationStyle = UIModalPresentationPopover;
    activeVC.popoverPresentationController.sourceView = self.view;
    [self presentViewController:activeVC animated:true completion:nil];
}

-(void)preSettElements {
    //Canvas
    _canvasView.backgroundColor = UIColor.whiteColor;
    _canvasView.layer.cornerRadius = 8;
    CGColorRef canvasShadowColor = [[[UIColor alloc] initWithRed:0 green:0.7 blue:1 alpha:0.25] CGColor];
    [self createShadowfor:_canvasView shadowPathRadius:8 color:canvasShadowColor opacity:1 shadowRadius:4 offset:CGSizeZero];
    //ButtonShadowColor
    CGColorRef buttonShadowColor = [[[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:0.25] CGColor];
    //openPaletteButton
    [self preSettButtons:_openPaletteButton];
    [self createShadowfor:_openPaletteButton shadowPathRadius:10 color:buttonShadowColor opacity:1 shadowRadius:1 offset:CGSizeZero];
    //openTimerButton
    [self preSettButtons:_openTimerButton];
    [self createShadowfor:_openTimerButton shadowPathRadius:10 color:buttonShadowColor opacity:1 shadowRadius:1 offset:CGSizeZero];
    //drawButton
    [self preSettButtons:_drawButton];
    [self createShadowfor:_drawButton shadowPathRadius:10 color:buttonShadowColor opacity:1 shadowRadius:1 offset:CGSizeZero];
    //resetButton
    [self preSettButtons:_resetButton];
    [self createShadowfor:_resetButton shadowPathRadius:10 color:buttonShadowColor opacity:1 shadowRadius:1 offset:CGSizeZero];
    //shareButton
    [self preSettButtons:_shareButton];
    [self createShadowfor:_shareButton shadowPathRadius:10 color:buttonShadowColor opacity:1 shadowRadius:1 offset:CGSizeZero];
    
    //navigationBar
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIFont fontWithName:@"Montserrat-Regular" size:17] forKey:NSFontAttributeName];
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIFont fontWithName:@"Montserrat-Regular" size:17] forKey:NSFontAttributeName] forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor colorWithRed:0.113 green:0.69 blue:0.56 alpha:1];
}

-(void)createShadowfor:(UIView*)view shadowPathRadius:(CGFloat)shadowPathRadius color:(CGColorRef)color opacity:(CGFloat)opacity shadowRadius:(CGFloat)shadowRadius offset:(CGSize)offset {
    CGPathRef shadowPath = [[UIBezierPath bezierPathWithRoundedRect:view.bounds cornerRadius:shadowPathRadius] CGPath];
    view.layer.shadowPath = shadowPath;
    view.layer.shadowColor = color;
    view.layer.shadowOpacity = opacity;
    view.layer.shadowRadius = shadowRadius;
    view.layer.shadowOffset = offset;
    
}

-(void)preSettButtons:(UIButton*)button{
    button.backgroundColor = UIColor.whiteColor;
    button.layer.cornerRadius = 10;
}

//MARK: ModalViewDelegate
-(void)closeModalView{
//    когда завкрываем модальное окно, удаляем view с экрана текущего контроллера
    [_modalVC.view removeFromSuperview];
//    проверяем сколько цветов в массиве, недостающие добавляем как черные
    _canvasColorsArray = [NSMutableArray new];
    for (UIButton *button in _canvasButtonsArray) {
        [_canvasColorsArray addObject:button.subviews[0].backgroundColor];
    }
    while (_canvasColorsArray.count != 3) {
        [_canvasColorsArray addObject:UIColor.blackColor];
    }
    //Shuffle array - для случайного присвоения цвета
    NSUInteger count = [_canvasColorsArray count];
    if (count <= 1) return;
    for (NSUInteger i = 0; i < count - 1; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [_canvasColorsArray exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
}

-(void)closeTimerView {
    [_timerVC.view removeFromSuperview];
}

@end

