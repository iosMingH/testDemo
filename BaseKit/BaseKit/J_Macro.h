//
//  J_ColorMacro.h
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#ifndef J_ColorMacro_h
#define J_ColorMacro_h

//WeakSelf
#define WeakSelf __weak typeof(self) weakSelf = self;

//设备宏
#define DV_Width [UIScreen mainScreen].bounds.size.width
#define DV_Heigh [UIScreen mainScreen].bounds.size.height
#define KIsiPhoneX ((int)((Zt_Heigh/Zt_Width)*100) == 216)?YES:NO

//颜色
#define JColorRGB(r, g, b)             [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]
#define JRGB(r, g, b, a)     [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:(a)]

#define JColorRGBHex(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define JRGBHexAlpha(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]

#define JRandomColor [UIColor colorWithRed:(arc4random()%255)/255.0green:(arc4random()%255)/255.0blue:(arc4random()%255)/255.0alpha:1.0]

#endif /* J_ColorMacro_h */
