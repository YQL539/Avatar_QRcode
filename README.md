# Avatar_QRcode
一个关于二维码中间头像处理（头像圆角处理等）
![image](https://github.com/baobao57/Avatar_QRcode/blob/master/PartIPhotographs/showme.png?raw=true)

文件里我自定义一个为UIImage 添加的 category 。
> 这个category我之暴露了一个方法，使用起来特别简单。 使用CGContext 原生代码进行重新绘制的。希望大家多多指点
    
    @interface UIImage (Avatar)
     /**
     *  封装的一个category
     *
     *  @param bgImage     二维码图片
     *  @param LogoImage   需要中间显示的 LOGO
     *  @param size        你想得到多大的图片，这个方便进行大小的重新绘制
     *
     *  @return 返回一个new的Imgaeview。需要用一个image对象接受
     */
    + (UIImage *)imagewithBgImage:(UIImage *)bgImage addLogoImage:(UIImage *)LogoImage ofTheSize:(CGSize)size;
    @end


只需要调用 

    UIImage *qrcodeImage = [UIImage imageNamed:@"qrcode"];
    UIImage *avatarImage = [UIImage imageNamed:@"avatar"];
    _avatatQRcode.image = [UIImage imagewithBGImage:qrcodeImage addAvatarImage:avatarImage ofTheSize:_avatatQRcode.frame.size];
    
> 就可以生成一个 "新的二维码logo图片" 。这个图片是可以进行保存的。  
