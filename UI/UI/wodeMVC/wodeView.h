//
//  wodeView.h
//  UI
//
//  Created by 朱敬业 on 2024/1/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface wodeView : UIView
@property (nonatomic, strong) UIImageView* imageview ;
@property (nonatomic, strong) UIButton* imagebutton ;
@property (nonatomic, strong) UILabel* namelabel ;
@property (nonatomic, strong) UIButton* memberbutton ;
@property (nonatomic, strong) UIButton* historybutton ;
@property (nonatomic, strong) UIButton* settingbutton ;

- (void)initView ;

@end

NS_ASSUME_NONNULL_END
