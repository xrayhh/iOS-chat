//
//  shouyeViewController.h
//  UI
//
//  Created by 朱敬业 on 2024/1/27.
//

#import <UIKit/UIKit.h>
#import "shouyeView.h"
#import "shouyeModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface shouyeViewController : UIViewController
@property (nonatomic, strong) shouyeModel* mModel ;
@property (nonatomic, strong) shouyeView* mView ;
@end

NS_ASSUME_NONNULL_END
