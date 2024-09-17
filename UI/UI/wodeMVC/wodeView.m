//
//  wodeView.m
//  UI
//
//  Created by 朱敬业 on 2024/1/27.
//

#import "wodeView.h"

@implementation wodeView

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
    
    self.imagebutton = [UIButton buttonWithType:UIButtonTypeCustom] ;
    [self.imagebutton setImage:[UIImage imageNamed:@"laoda.jpg"] forState:UIControlStateNormal] ;
    self.imagebutton.frame = CGRectMake(170, 100,60 , 60) ;
    self.imagebutton.layer.cornerRadius = 30 ;
    self.imagebutton.layer.masksToBounds = YES ;
    [self.imageview addSubview:self.imagebutton] ;
    
    self.namelabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 180, self.bounds.size.width, 30)] ;
    self.namelabel.text = @"ee" ;
    self.namelabel.textAlignment = NSTextAlignmentCenter ;
    [self addSubview:self.namelabel] ;
    
    self.memberbutton = [UIButton buttonWithType:UIButtonTypeCustom] ;
    self.memberbutton.frame = CGRectMake(100, 230, 200, 120) ;
    self.memberbutton.layer.cornerRadius  = 8.0 ;
    self.memberbutton.layer.masksToBounds = YES ;
    [self.memberbutton setTitle:@"管理成员" forState:UIControlStateNormal] ;
    [self.memberbutton setTitleColor:UIColor.blackColor forState:UIControlStateNormal] ;
    self.memberbutton.titleLabel.textAlignment = NSTextAlignmentCenter ;
    self.memberbutton.backgroundColor = UIColor.lightGrayColor ;
    [self.imageview addSubview:self.memberbutton] ;
    
    
    
    
}

@end
