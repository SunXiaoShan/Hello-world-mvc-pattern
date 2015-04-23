//
//  ModelObject.m
//  MVC_Pattern
//
//  Created by Gemtek_Phineas_Huang on 2015/4/22.
//  Copyright (c) 2015年 SunXiaoShan. All rights reserved.
//

#import "ModelObject.h"
#import "Utils.h"

@interface ModelObject()
{
    NSString *mContext;
    
    NSMutableArray *mArrModelObserver;
}

@property (nonatomic, retain) id<ModelObserver> delegate;

@end

@implementation ModelObject

- (id) init
{
    self = [super init];
    if (self != nil) {
        SLogM(@"create model");
        
        mContext = @"init";
        
        // observer list
        mArrModelObserver = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) setContext:(NSString *)context
{
    SLogM(@"set context:%@", context);
    mContext = context;
    
    [self updateModel];
}

- (NSString *) getContext
{
    return mContext;
}

- (void) trigEvent
{
    // notify
}

- (void) registerModelObserver:(id)o
{
    if (mArrModelObserver == nil) {
        
        SLogM(@"[ERROR] mArrModelObserver is nil");
        return;
    }
    
    [mArrModelObserver addObject:o];
}

- (void) removeModelObserver:(id)o
{
    int i = (int)[mArrModelObserver indexOfObject:o];
    if (i >= 0 && i<[mArrModelObserver count]) {
        [mArrModelObserver removeObjectAtIndex:i];
    } else {
        SLogM(@"[ERROR] removeModelObserver is error");
        return;
    }
}

- (void) updateModel
{
    for (id o in mArrModelObserver) {
        _delegate = o;
        
        SLogM(@"action updateModel()");
        [_delegate updateView:[self getContext]];
    }
}



@end
