//
//  ControllerInterface.h
//  MVC_Pattern
//
//  Created by Gemtek_Phineas_Huang on 2015/4/22.
//  Copyright (c) 2015年 SunXiaoShan. All rights reserved.
//

#ifndef MVC_Pattern_ControllerInterface_h
#define MVC_Pattern_ControllerInterface_h

#import "Utils.h"

@protocol ControllerInterface <NSObject>

@required

- (void) setString:(NSString *)str;

@end


#endif
