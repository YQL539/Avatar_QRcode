//
//  ShowQvaQRViewController.m
//  Avatar_QRcode
//
//  Created by hanlei on 16/9/10.
//  Copyright © 2016年 hanlei. All rights reserved.
//

#import "ShowQvaQRViewController.h"
#import "UIImage+Avatar.h"
@interface ShowQvaQRViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *avatatQRcode;

@end

@implementation ShowQvaQRViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *qrcodeImage = [UIImage imageNamed:@"qrcode"];
    UIImage *avatarImage = [UIImage imageNamed:@"avatar"];
    _avatatQRcode.image = [UIImage imagewithBgImage:qrcodeImage addLogoImage:avatarImage ofTheSize:_avatatQRcode.frame.size];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
