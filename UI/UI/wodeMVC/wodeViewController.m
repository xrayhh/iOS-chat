//
//  wodeViewController.m
//  UI
//
//  Created by 朱敬业 on 2024/1/27.
//

#import "wodeViewController.h"

@interface wodeViewController ()

@end

@implementation wodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mView = [[wodeView alloc] init] ;
    self.mView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) ;
    [self.mView initView] ;
    [self.view addSubview:self.mView] ;
    self.mModel = [[wodeModel alloc] init] ;
//    [self.mModel initModel] ;
    self.view.backgroundColor = UIColor.whiteColor ;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
