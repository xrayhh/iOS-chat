//
//  shouyeView.m
//  UI
//
//  Created by 朱敬业 on 2024/1/27.
//

#import "shouyeView.h"

@implementation shouyeView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)initView {
    self.imageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"WechatIMG101.jpeg"]] ;
    self.imageview.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height) ;
    [self addSubview:self.imageview] ;
    
    self.addbutton = [UIButton buttonWithType:UIButtonTypeCustom] ;
    self.addbutton.frame = CGRectMake(100, 85, 200, 170) ;
    self.addbutton.layer.cornerRadius  = 8.0 ;
    self.addbutton.layer.masksToBounds = YES ;
    [self.addbutton setTitle:@"增加药品" forState:UIControlStateNormal] ;
    [self.addbutton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal] ;
    self.addbutton.titleLabel.textAlignment = NSTextAlignmentCenter ;
    self.addbutton.backgroundColor = UIColor.greenColor ;
    [self.imageview addSubview:self.addbutton] ;
    
    self.mybutton = [UIButton buttonWithType:UIButtonTypeCustom] ;
    self.mybutton.frame = CGRectMake(100, 340, 200, 170) ;
    self.mybutton.layer.cornerRadius  = 8.0 ;
    self.mybutton.layer.masksToBounds = YES ;
    [self.mybutton setTitle:@"我的药箱" forState:UIControlStateNormal] ;
    [self.mybutton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal] ;
    self.mybutton.titleLabel.textAlignment = NSTextAlignmentCenter ;
    self.mybutton.backgroundColor = UIColor.greenColor ;
    [self.imageview addSubview:self.mybutton] ;
    
    self.tipbutton = [UIButton buttonWithType:UIButtonTypeCustom] ;
    self.tipbutton.frame = CGRectMake(100, 600, 200, 170) ;
    self.tipbutton.layer.cornerRadius  = 8.0 ;
    self.tipbutton.layer.masksToBounds = YES ;
    [self.tipbutton setTitle:@"用药提醒" forState:UIControlStateNormal] ;
    [self.tipbutton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal] ;
    self.tipbutton.titleLabel.textAlignment = NSTextAlignmentCenter ;
    self.tipbutton.backgroundColor = UIColor.greenColor ;
    [self.imageview addSubview:self.tipbutton] ;
}

@end
