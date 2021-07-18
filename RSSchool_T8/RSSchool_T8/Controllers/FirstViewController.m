//
//  FirstViewController.m
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 17.07.2021.
//

#import "FirstViewController.h"

@interface FirstViewController () <ModalViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *canvasView;
@property (weak, nonatomic) IBOutlet UIButton *openPaletteButton;
@property (weak, nonatomic) IBOutlet UIButton *openTimerButton;
@property (weak, nonatomic) IBOutlet UIButton *drawButton;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;

@end

@implementation FirstViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _modalVC = [ModalViewController new];
    _modalVC.delegate = self;
    
    [_openPaletteButton addTarget:self action:@selector(openPaletteTapped:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)viewWillAppear:(BOOL)animated{
    [self preSettElements];
}

-(void)openPaletteTapped:(UIButton *)sender{
    _modalVC.view.frame = CGRectMake(0, self.view.frame.size.height - 333.5, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:_modalVC.view];
}

-(void)preSettElements {
    //Canvas
    _canvasView.backgroundColor = UIColor.whiteColor;
    _canvasView.layer.cornerRadius = 8;
    //Canvas shadow
    CGColorRef canvasShadowColor = [[[UIColor alloc] initWithRed:0 green:0.7 blue:1 alpha:0.25] CGColor];
    [self createShadowfor:_canvasView shadowPathRadius:8 color:canvasShadowColor opacity:1 shadowRadius:4 offset:CGSizeZero];
    
    
    //ButtonShadowColor
    CGColorRef buttonShadowColor = [[[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:0.25] CGColor];
    //openPaletteButton
    [self preSettButtons:_openPaletteButton];
    //openPaletteButton shadow
    [self createShadowfor:_openPaletteButton shadowPathRadius:10 color:buttonShadowColor opacity:1 shadowRadius:1 offset:CGSizeZero];
    
    //openTimerButton
    [self preSettButtons:_openTimerButton];
    //openTimerButton shadow
    [self createShadowfor:_openTimerButton shadowPathRadius:10 color:buttonShadowColor opacity:1 shadowRadius:1 offset:CGSizeZero];
    
    //drawButton
    [self preSettButtons:_drawButton];
    //drawButton shadow
    [self createShadowfor:_drawButton shadowPathRadius:10 color:buttonShadowColor opacity:1 shadowRadius:1 offset:CGSizeZero];
    
    //shareButton
    _shareButton.enabled = false;
    _shareButton.layer.opacity = 0.5;
    [self preSettButtons:_shareButton];
    //shareButton shadow
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
    [_modalVC.view removeFromSuperview];
    _canvasColorsArray = [NSMutableArray new];
    for (UIButton *button in _canvasButtonsArray) {
        [_canvasColorsArray addObject:button.subviews[0].backgroundColor];
    }
    while (_canvasColorsArray.count != 3) {
        [_canvasColorsArray addObject:UIColor.blackColor];
    }
    NSLog(@"%@",_canvasColorsArray);
    NSLog(@"------------");
}

@end

