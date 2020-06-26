#import "GithubReposService.h"

@implementation GithubReposService

- (instancetype)initWithLoader:(Loader*)loader {
    _loader = loader;

    return self;
}

- (instancetype)init {
    _loader = [[Loader alloc] init];

    return self;
}

- (void)getGithubReposWithUsername:(NSString*)userName
                      SuccessBlock:(void(^)(NSDictionary *repos))successBlock
                        errorBlock:(void(^)(NSError *error))errorBlock {

    NSString *urlString = [[NSString alloc] initWithFormat:endPoint, userName];

    [_loader getRequest:urlString SuccessBlock:^(NSDictionary *repos) {
        NSLog(@"responseString:%@",repos);
        successBlock(repos);
    } errorBlock:^(NSError *error) {
        NSLog(@"Wasim failure: %@", error);
        errorBlock(error);
    }];

}

@end
