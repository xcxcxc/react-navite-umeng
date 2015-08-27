//
//  PRCTUMengManager.m
//  PPForum
//
//  Created by xc on 15/8/27.
//  Copyright (c) 2015年 kang. All rights reserved.
//

#import "PRCTUMengManager.h"
#import "RCTBridge.h"
#import "RCTConvert.h"
#import "RCTEventDispatcher.h"


@implementation PRCTUMengManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(logPageView:(NSString *)pageName seconds:(int)seconds) {
	[MobClick logPageView:pageName seconds:seconds];
}


RCT_EXPORT_METHOD(beginLogPageView:(NSString *)pageName) {
	[MobClick beginLogPageView:pageName];
}

RCT_EXPORT_METHOD(endLogPageView:(NSString *)pageName) {
	[MobClick endLogPageView:pageName];
}

RCT_EXPORT_METHOD(event:(NSString *)eventId) {
	[MobClick event:eventId];
}

RCT_EXPORT_METHOD(eventLabel:(NSString *)eventId label:(NSString *)label) {
	[MobClick event:eventId label:label];
}

RCT_EXPORT_METHOD(eventAttributes:(NSString *)eventId attributes:(NSDictionary *)attributes) {
	[MobClick event:eventId attributes:attributes];
}

RCT_EXPORT_METHOD(eventAttributesCounter:(NSString *)eventId attributes:(NSDictionary *)attributes counter:(int)number) {
	[MobClick event:eventId attributes:attributes counter:number];
}

RCT_EXPORT_METHOD(beginEvent:(NSString *)eventId) {
	[MobClick beginEvent:eventId];
}

RCT_EXPORT_METHOD(endEvent:(NSString *)eventId) {
	[MobClick endEvent:eventId];
}

RCT_EXPORT_METHOD(beginEventLabel:(NSString *)eventId label:(NSString *)label) {
	[MobClick beginEvent:eventId label:label];
}

RCT_EXPORT_METHOD(endEventLabel:(NSString *)eventId label:(NSString *)label) {
	[MobClick endEvent:eventId label:label];
}

RCT_EXPORT_METHOD(beginEventPrimarykeyAttributes:(NSString *)eventId primarykey:(NSString *)keyName attributes:(NSDictionary *)attributes) {
	[MobClick beginEvent:eventId primarykey:keyName attributes:attributes];
}

RCT_EXPORT_METHOD(endEventPrimarykey:(NSString *)eventId primarykey:(NSString *)keyName) {
	[MobClick endEvent:eventId primarykey:keyName];
}

RCT_EXPORT_METHOD(eventDurations:(NSString *)eventId durations:(int)millisecond) {
	[MobClick event:eventId durations:millisecond];
}

RCT_EXPORT_METHOD(eventLabelDurations:(NSString *)eventId label:(NSString *)label durations:(int)millisecond) {
	[MobClick event:eventId label:label durations:millisecond];
}

RCT_EXPORT_METHOD(event:(NSString *)eventId attributes:(NSDictionary *)attributes durations:(int)millisecond) {
	[MobClick event:eventId attributes:attributes durations:millisecond];
}


RCT_EXPORT_METHOD(getConfigParams:(NSString *)key withCallback:(RCTResponseSenderBlock)callback) {
	NSString *param = [MobClick getConfigParams:key];
	if (callback && param) {
		callback(@[@{@"param": param}]);
	}
}

RCT_EXPORT_METHOD(getConfigParamsWithCallback:(RCTResponseSenderBlock)callback) {
	if (callback) {
		callback(@[@{@"params": [MobClick getConfigParams]}]);
	}
}

RCT_EXPORT_METHOD(getAdURLWithCallback:(RCTResponseSenderBlock)callback) {
	NSString *adUrl = [MobClick getAdURL];
	if (callback && adUrl) {
		callback(@[@{@"adURL": adUrl}]);
	}
}

RCT_EXPORT_METHOD(setLocation:(double)latitude longitude:(double)longitude) {
	[MobClick setLatitude:latitude longitude:longitude];
}



RCT_EXPORT_METHOD(isJailbrokenWithCallback:(RCTResponseSenderBlock)callback) {
	BOOL isJailbroken = [MobClick isJailbroken];
	if (callback) {
		callback(@[@{@"isJailbroken": @(isJailbroken)}]);
	}
}


RCT_EXPORT_METHOD(isPiratedWithCallback:(RCTResponseSenderBlock)callback) {
	BOOL isPirated = [MobClick isPirated];
	if (callback) {
		callback(@[@{@"isPirated": @(isPirated)}]);
	}
}




#pragma mark - update

RCT_EXPORT_METHOD(checkUpdate) {
	[MobClick checkUpdate];
	[MobClick checkUpdateWithDelegate:self selector:@selector(callBackSelectorWithDictionary:)];
}


- (void)callBackSelectorWithDictionary:(NSDictionary *)dictionary {
	[self.bridge.eventDispatcher sendInputEventWithName:@"checkUpdateResp" body:dictionary];
}

RCT_EXPORT_METHOD(checkUpdateTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelTitle otherButtonTitles:(NSString *)otherTitle) {
	[MobClick checkUpdate:title cancelButtonTitle:cancelTitle otherButtonTitles:otherTitle];
}

RCT_EXPORT_METHOD(updateOnlineConfig) {
	[MobClick updateOnlineConfig];
}




@end
