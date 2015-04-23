//
//  ControllerObject.h
//  MVC_Pattern
//
//  Created by Gemtek_Phineas_Huang on 2015/4/22.
//  Copyright (c) 2015年 SunXiaoShan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ControllerInterface.h"
#import "ModelObject.h"

@interface ControllerObject : NSObject <ControllerInterface>

- (id) initWithModel:(ModelObject *)model;

@end
