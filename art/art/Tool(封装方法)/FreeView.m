//
//  FreeView.m
//  art
//
//  Created by Apple on 16/1/14.
//  Copyright © 2016年 sunyan. All rights reserved.
//

#import "FreeView.h"
#define marginLeft 18.0
#define marginRight 16.0
#define marginTL 26.0
#define leftWH 32.0

@interface FreeView ()

@property (nonatomic, strong) UIImageView *leftImgView;
@property(nonatomic,strong) UITextField *textField;
@property (nonatomic, strong) UIButton *rightBtn;

@end
@implementation FreeView

//- (instancetype)initWithFrame:(CGRect)frame {
//
//    if (self = [super initWithFrame:frame]) {
//        [self initSubviews];
//    }
//    return self;
//}

+ (FreeView *)freeViewWithFrame: (CGRect)frame
                           Free:(FreeView *)free
                         leftName: (UIImage *)leftName
                        rightName: (UIImage *)rightName
                      placeHolder: (NSString *)placeHolder
                    isHiddenRight: (BOOL)isOrNotHidden {

    free.frame = frame;
    free.layer.cornerRadius = 8;
    free.clipsToBounds = YES;
    CGFloat height = free.height;
    
   UIImageView *leftImgView = [[UIImageView alloc] initWithFrame:CGRectMake(marginLeft, (height - leftWH) * 0.5, leftWH, leftWH)];
    
    leftImgView.image = leftName;
    [free addSubview:leftImgView];
    
   UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(leftImgView.frame) + marginRight, 0, 200, height)];
    textField.placeholder = placeHolder;
    [free addSubview:textField];
    
    CGFloat rightBtnWH = 20;
   UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.frame = CGRectMake(CGRectGetMaxX(textField.frame), (height - rightBtnWH) * 0.5, rightBtnWH, rightBtnWH);
    [rightBtn setImage:rightName forState:UIControlStateNormal];
    rightBtn.hidden = isOrNotHidden;
    [free addSubview:rightBtn];
    
    return free;
}


- (void)initSubviews: (NSString *)leftName
           rightName: (NSString *)rightName
            isHidden: (BOOL)isHidden
         placeHolder: (NSString *)placeHolder{
    

    CGFloat height = self.height;
    
    _leftImgView = [[UIImageView alloc] initWithFrame:CGRectMake(marginLeft, (height - leftWH) * 0.5, leftWH, leftWH)];

    _leftImgView.image = [UIImage imageNamed:leftName];
    [self addSubview:_leftImgView];
    
    _textField = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_leftImgView.frame) + marginRight, 0, 200, height)];
    _textField.placeholder = placeHolder;
    [self addSubview:_textField];
    
    CGFloat rightBtnWH = 20;
    _rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _rightBtn.frame = CGRectMake(CGRectGetMaxX(_textField.frame), (height - rightBtnWH) * 0.5, rightBtnWH, rightBtnWH);
    [_rightBtn setImage:[UIImage imageNamed:rightName] forState:UIControlStateNormal];
    _rightBtn.hidden = isHidden;
    _rightBtn.backgroundColor = [UIColor redColor];
    [self addSubview:_rightBtn];
}

- (void)setLeftImgName:(NSString *)leftImgName {

    _leftImgName = [leftImgName copy];
    _leftImgView.image = [UIImage imageNamed:leftImgName];
}

- (void)setPlaceHolder:(NSString *)placeHolder {

    _placeHolder = [placeHolder copy];
}

@end
