#import <XCTest/XCTest.h>
#import "GithubReposService.h"
#import "Loader.h"

@interface FrameworkDemoTests : XCTestCase

@end

@implementation FrameworkDemoTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testExample {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Wasim"];

    Loader *loader = [[Loader alloc] init];

    GithubReposService *service = [[GithubReposService alloc] initWithLoader: loader];
    [service getGithubReposWithUsername:@"wassmd" SuccessBlock:^(NSArray * _Nonnull repositories) {
        [expectation fulfill];
    } errorBlock:^(NSError * _Nonnull error) {
        [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout: 5.0 handler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
    }];
}

@end
