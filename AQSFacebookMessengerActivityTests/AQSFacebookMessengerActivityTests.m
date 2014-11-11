//
//  AQSFacebookMessengerActivityTests.m
//  AQSFacebookMessengerActivityTests
//
//  Created by kaiinui on 2014/11/11.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <OCMock.h>

#import "AQSFacebookMessengerActivity.h"
#import <FacebookSDK.h>

@interface AQSFacebookMessengerActivity (Test)

- (BOOL)isFacebookMessengerDialogAvailable;
- (BOOL)isFacebookMessengerDialogAvailableWithPhoto;

@end

@interface AQSFacebookMessengerActivityTests : XCTestCase

@property AQSFacebookMessengerActivity *activity;

@end

@implementation AQSFacebookMessengerActivityTests

- (void)setUp {
    [super setUp];
    
    _activity = [[AQSFacebookMessengerActivity alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testItsActivityCategoryIsShare {
    XCTAssertTrue(AQSFacebookMessengerActivity.activityCategory == UIActivityCategoryShare);
}

- (void)testItReturnsItsImage {
    XCTAssertNotNil(_activity.activityImage);
}

- (void)testItReturnsItsType {
    XCTAssertTrue([_activity.activityType isEqualToString:@"org.openaquamarine.facebookmessenger"]);
}

- (void)testItReturnsItsTitle {
    XCTAssertTrue([_activity.activityTitle isEqualToString:@"Facebook Messenger"]);
}

- (void)testItCanPerformActivityWithURLWhenMessengerIsAvailable {
    id activity = [OCMockObject partialMockForObject:_activity];
    OCMStub([activity isFacebookMessengerDialogAvailable]).andReturn(YES);
    OCMStub([activity isFacebookMessengerDialogAvailableWithPhoto]).andReturn(YES);
    
    NSArray *activityItems = @[[NSURL URLWithString:@"http://google.com/"]];
    XCTAssertTrue([activity canPerformWithActivityItems:activityItems]);
}

- (void)testItCanPerformActivityWithLinkShareParamsWhenMessengerIsAvailable {
    id activity = [OCMockObject partialMockForObject:_activity];
    OCMStub([activity isFacebookMessengerDialogAvailable]).andReturn(YES);
    OCMStub([activity isFacebookMessengerDialogAvailableWithPhoto]).andReturn(YES);
    
    FBLinkShareParams *params = [[FBLinkShareParams alloc] init];
    
    NSArray *activityItems = @[params, [NSURL URLWithString:@"http://google.com/"]];
    XCTAssertTrue([activity canPerformWithActivityItems:activityItems]);
}


- (void)testItCannotPerformActivityWithURLWhenMessengerIsNotAvailable {
    id activity = [OCMockObject partialMockForObject:_activity];
    OCMStub([activity isFacebookMessengerDialogAvailable]).andReturn(NO);
    
    NSArray *activityItems = @[@"hoge", [NSURL URLWithString:@"http://google.com/"]];
    XCTAssertFalse([activity canPerformWithActivityItems:activityItems]);
}

- (void)testItCannotPerformActivityWithoutURLOrImageWhenMessengerIsAvailable {
    id activity = [OCMockObject partialMockForObject:_activity];
    OCMStub([activity isFacebookMessengerDialogAvailable]).andReturn(YES);
    
    NSArray *activityItems = @[@"hoge"];
    XCTAssertFalse([activity canPerformWithActivityItems:activityItems]);
}


@end
