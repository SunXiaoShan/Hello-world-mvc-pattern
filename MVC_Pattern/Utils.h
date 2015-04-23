//
//  Utils.h
//  MVC_Pattern
//
//  Created by Gemtek_Phineas_Huang on 2015/4/22.
//  Copyright (c) 2015年 SunXiaoShan. All rights reserved.
//

#ifndef MVC_Pattern_Utils_h
#define MVC_Pattern_Utils_h

#define XCODE_COLORS_ESCAPE @"\033["
#define XCODE_COLORS_RESET  XCODE_COLORS_ESCAPE @";" // Clear any foreground or background color

#define SLog(x, ...) NSLog(@"%s %d: " x, __FUNCTION__, __LINE__, ##__VA_ARGS__)
#define NSLog_M(frmt, ...) NSLog((XCODE_COLORS_ESCAPE @"fg63,122,179;" frmt XCODE_COLORS_RESET), ##__VA_ARGS__)
#define NSLog_V(frmt, ...) NSLog((XCODE_COLORS_ESCAPE @"fg81,160,22;"  frmt XCODE_COLORS_RESET), ##__VA_ARGS__)
#define NSLog_C(frmt, ...) NSLog((XCODE_COLORS_ESCAPE @"fg207,174,0;"  frmt XCODE_COLORS_RESET), ##__VA_ARGS__)

#define SLogM(x, ...) NSLog_M(@"%s[%d] " x, __FUNCTION__, __LINE__, ##__VA_ARGS__)
#define SLogV(x, ...) NSLog_V(@"%s[%d] " x, __FUNCTION__, __LINE__, ##__VA_ARGS__)
#define SLogC(x, ...) NSLog_C(@"%s[%d] " x, __FUNCTION__, __LINE__, ##__VA_ARGS__)


#endif
