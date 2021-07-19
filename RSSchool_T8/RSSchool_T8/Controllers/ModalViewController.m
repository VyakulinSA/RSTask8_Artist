//
//  ModalViewController.m
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 17.07.2021.
//

#import "ModalViewController.h"
#import "CustomButtons.h"

@interface ModalViewController () <NSObject>
@property (weak, nonatomic) IBOutlet CustomButtons *saveButton;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *paletteButtonsColl;

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self preSettPaletteButtons];
    
    _paletteColorsArray = [NSMutableArray new];
    
    [_saveButton addTarget:self action:@selector(saveButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
}


-(void)saveButtonTapped:(UIButton *)sender{
    self.delegate.canvasButtonsArray = _paletteColorsArray;
    [self.delegate closeModalView];
}


- (void)viewDidAppear:(BOOL)animated{
    [self preSettElements];
    
}

-(void)preSettElements {
    //saveButton
    CGColorRef shadowColor = [[[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:0.25] CGColor];
    [self preSettButtons:_saveButton];
    [self createShadowfor:_saveButton shadowPathRadius:10 color:shadowColor opacity:1 shadowRadius:1 offset:CGSizeZero];
    //view shadow
    self.view.layer.cornerRadius = 40;
    self.view.backgroundColor = UIColor.whiteColor;
    [self createShadowfor:self.view shadowPathRadius:40 color:shadowColor opacity:1 shadowRadius:4 offset:CGSizeZero];
}

-(void)preSettPaletteButtons{
    //paletteButtonsColl
    CGColorRef shadowColor = [[[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:0.25] CGColor];
    for (UIButton *button in _paletteButtonsColl) {
        UIColor *mainBackgroundColor = button.backgroundColor;
        [self preSettButtons:button];
        [self createShadowfor:button shadowPathRadius:10 color:shadowColor opacity:1 shadowRadius:1 offset:CGSizeZero];
        UIView *uncheckedView = [UIView new];
        uncheckedView.backgroundColor = mainBackgroundColor;
        uncheckedView.layer.cornerRadius = 6;
        uncheckedView.frame = CGRectMake(8, 8, 24, 24);
        uncheckedView.bounds = CGRectMake(8, 8, 24, 24);
        uncheckedView.hidden = false;
        uncheckedView.userInteractionEnabled = false;
        [button addSubview:uncheckedView];
        
        UIView *checkedView = [UIView new];
        checkedView.backgroundColor = mainBackgroundColor;
        checkedView.layer.cornerRadius = 8;
        checkedView.frame = CGRectMake(2, 2, 36, 36);
        checkedView.bounds = CGRectMake(2, 2, 36, 36);
        checkedView.hidden = true;
        checkedView.userInteractionEnabled = false;
        [button addSubview:checkedView];
        
        [button addTarget:self action:@selector(paletteButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    }
}

-(void)paletteButtonTapped:(UIButton *)sender{
    if (sender.subviews[1].hidden == false) {
        [self uncheckPaletteButton:sender];
        [_paletteColorsArray removeObject:sender];
    } else{
        [self checkPaletteButton:sender];
        if (_paletteColorsArray.count == 3){
            [self uncheckPaletteButton:_paletteColorsArray[0]];
            [_paletteColorsArray removeObjectAtIndex:0];
            [_paletteColorsArray addObject:sender];
        }else {
            [_paletteColorsArray addObject:sender];
        }
    }
    
}

-(void)checkPaletteButton:(UIButton *)paletteButton{
    if (_paletteTimer.valid){
        [_paletteTimer invalidate];
        _paletteTimer = [NSTimer scheduledTimerWithTimeInterval:1 repeats:false block:^(NSTimer * _Nonnull timer) {
                self.view.backgroundColor = UIColor.whiteColor;
        }];
    }else{
        _paletteTimer = [NSTimer scheduledTimerWithTimeInterval:1 repeats:false block:^(NSTimer * _Nonnull timer) {
                self.view.backgroundColor = UIColor.whiteColor;
        }];
    }
    
    paletteButton.subviews[1].hidden = false;
    paletteButton.subviews[0].hidden = true;
    self.view.backgroundColor = paletteButton.subviews[0].backgroundColor;
   
    
}

-(void)uncheckPaletteButton:(UIButton *)paletteButton{
    if (_paletteTimer.valid){
        [_paletteTimer invalidate];
        _paletteTimer = [NSTimer scheduledTimerWithTimeInterval:1 repeats:false block:^(NSTimer * _Nonnull timer) {
                self.view.backgroundColor = UIColor.whiteColor;
        }];
    }else {
        self.view.backgroundColor = UIColor.whiteColor;
    }
    
    paletteButton.subviews[1].hidden = true;
    paletteButton.subviews[0].hidden = false;
}

-(void)preSettButtons:(UIButton*)button{
    button.backgroundColor = UIColor.whiteColor;
    button.layer.cornerRadius = 10;
}

-(void)createShadowfor:(UIView*)view shadowPathRadius:(CGFloat)shadowPathRadius color:(CGColorRef)color opacity:(CGFloat)opacity shadowRadius:(CGFloat)shadowRadius offset:(CGSize)offset {
    CGPathRef shadowPath = [[UIBezierPath bezierPathWithRoundedRect:view.bounds cornerRadius:shadowPathRadius] CGPath];
    view.layer.shadowPath = shadowPath;
    view.layer.shadowColor = color;
    view.layer.shadowOpacity = opacity;
    view.layer.shadowRadius = shadowRadius;
    view.layer.shadowOffset = offset;
    
}

@end
