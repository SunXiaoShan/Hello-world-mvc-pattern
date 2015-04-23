//
//  ViewObject.h
//  MVC_Pattern
//
//  Created by Gemtek_Phineas_Huang on 2015/4/22.
//  Copyright (c) 2015年 SunXiaoShan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModelObserver.h"
#import "ControllerObject.h"
#import "ModelObject.h"

@interface ViewObject :NSObject <ModelObserver>

- (id) initWithController:(ControllerObject *)controller withModel:(ModelObject *)model;

- (void) setText:(NSString *)str;
- (void) clickButton;

@end
