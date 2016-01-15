//
//  FreeView.h
//  art
//
//  Created by Apple on 16/1/14.
//  Copyright © 2016年 sunyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FreeView : UIView

@property(nonatomic,copy) NSString *leftImgName;
@property(nonatomic,copy) NSString *placeHolder;
@property(nonatomic,copy) NSString *rightBtnName;
@property (nonatomic, assign) BOOL *isHiddenRight;

+ (FreeView *)freeViewWithFrame: (CGRect)frame
                           Free:(FreeView *)free
                       leftName: (UIImage *)leftName
                      rightName: (UIImage *)rightName
                    placeHolder: (NSString *)placeHolder
                  isHiddenRight: (BOOL)isOrNotHidden;
@end
