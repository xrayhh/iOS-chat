//
//  ViewController.m
//  SparkChainDemo
//
//  Created by Jean on 2023/10/20.
//

#import "ViewController.h"

#import <SparkChain/SparkChain.h>
#import "SparkViewController.h"


#define APPID @""
#define APIKEY @""
#define APISERECT @""



@interface ViewController ()
@property (nonatomic ,strong)UIButton *btn;

@property (nonatomic ,strong)UILabel *tipLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"SDK初始化";
    // Do any additional setup after loading the view.
    
    // 请求一下aihub,解决安装后首次打开不弹网络提示
   [[[NSURLSession sharedSession] dataTaskWithURL:[NSURL URLWithString:@"https://www.iflyaicloud.com/portal/AIHub"]] resume];

    
    [self.view addSubview:self.btn];
    [self.view addSubview:self.tipLabel];


}

-(void)btnClick:(UIButton*)btn{
    
   
   
    SparkChainConfig * config = [[SparkChainConfig alloc] init];
    config.appID(APPID)
        .apiKey(APIKEY)
        .apiSecret(APISERECT)
        .logLevel(666);
    int ret = [SparkChain.getInst init:config];
    
   // _isInited = (ret == 0);
    if (ret != 0) {
        
        self.tipLabel.text = [NSString stringWithFormat:@"SparkChain init failed:%d",ret];
    }else{
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"初始化成功" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *confirmBtn = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            SparkViewController *sparkVC = [[SparkViewController alloc] init];
            [self.navigationController pushViewController:sparkVC animated:YES];
        }];
        [alert addAction: confirmBtn];
        [self presentViewController:alert animated:YES completion:nil];

    }
}

- (UIButton *)btn {
    if (!_btn) {
        _btn = [[UIButton alloc] initWithFrame:CGRectMake(25, 200, [[UIScreen mainScreen] bounds].size.width-50,60)];
        _btn.backgroundColor = [UIColor systemBlueColor];
        [_btn setTitle:@"SDK初始化" forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _btn;
}



- (UILabel *)tipLabel {
    if (!_tipLabel) {
        _tipLabel = [[UILabel alloc] initWithFrame:CGRectMake(25, 280, [[UIScreen mainScreen] bounds].size.width-50,20)];
        _tipLabel.text = @"";
        _tipLabel.font = [UIFont systemFontOfSize:13];
    }
    
    return _tipLabel;
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
