//
//  Flappy_BirdUITests.m
//  Flappy BirdUITests
//
//
//

#import <XCTest/XCTest.h>

@interface Flappy_BirdUITests : XCTestCase

@end

@implementation Flappy_BirdUITests

- (void)setUp {
    [super setUp];

    self.continueAfterFailure = NO;
    [[[XCUIApplication alloc] init] launch];

}

- (void)tearDown {
    [super tearDown];
}

- (void)testExample {
}

@end
