//
//  wodeViewController.h
//  UI
//
//  Created by 朱敬业 on 2024/1/27.
//

#import <UIKit/UIKit.h>
#import "wodeView.h"
#import "wodeModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface wodeViewController : UIViewController
@property (nonatomic, strong) wodeView* mView ;
@property (nonatomic, strong) wodeModel* mModel ;
@end

NS_ASSUME_NONNULL_END
