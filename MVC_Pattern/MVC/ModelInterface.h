//
//  ModelInterface.h
//  MVC_Pattern
//
//  Created by Gemtek_Phineas_Huang on 2015/4/22.
//  Copyright (c) 2015年 SunXiaoShan. All rights reserved.
//

#import "ModelObserver.h"
#import "Utils.h"

@protocol ModelInterface <NSObject>

@required

- (void) setContext:(NSString *)context;

@optional
- (void) registerModelObserver:(id)o;
- (void) removeModelObserver:(id)o;

@end




