//
//  ControllerObject.m
//  MVC_Pattern
//
//  Created by Gemtek_Phineas_Huang on 2015/4/22.
//  Copyright (c) 2015年 SunXiaoShan. All rights reserved.
//

#import "ControllerObject.h"

@interface ControllerObject()
{
    ModelObject *mModel;
}

@end

@implementation ControllerObject

- (id) initWithModel:(ModelObject *)model
{
    self = [super init];
    if (self != nil) {
        
        SLogC(@"create controller");
        self->mModel = model;
    }
    return self;
}

- (void) setString:(NSString *)str
{
    SLogC(@"set string:%@", str);
    [mModel setContext:str];
}

@end
