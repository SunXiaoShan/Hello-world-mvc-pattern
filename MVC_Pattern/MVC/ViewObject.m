//
//  ViewObject.m
//  MVC_Pattern
//
//  Created by Gemtek_Phineas_Huang on 2015/4/22.
//  Copyright (c) 2015年 SunXiaoShan. All rights reserved.
//

#import "ViewObject.h"
#import "Utils.h"

@interface ViewObject()
{
    NSString *mTempString;
    NSString *mTextString;
    
    ControllerObject *mController;
    ModelObject *mModel;
}

@end

@implementation ViewObject

- (id) initWithController:(ControllerObject *)controller withModel:(ModelObject *)model
{
    self = [super init];
    if (self != nil) {
        SLogV(@"create view");
        
        self->mController = controller;
        self->mModel = model;
    }
    return self;
}

- (void) setText:(NSString *)str
{
    SLogV(@"set temp text string:%@", str);
    mTempString = str;
}

- (NSString *) getTextString
{
    SLogV(@"get text string:%@", mTextString);
    return mTextString;
}

- (void) clickButton
{
    SLogV(@"click button. save string.");
    [mController setString:mTempString];
}

- (void) updateView:(NSString *)str
{
    SLogV(@"updateView: %@", str);
    mTextString = [NSString stringWithFormat:@"%@", str];
}

@end
