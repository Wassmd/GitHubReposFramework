#import "GithubReposService.h"
#import "AFNetworking.h"
#import "Loader.h"
#import "Repository.h"

@implementation GithubReposService {
    Loader *_loader;
}

- (instancetype)initWithLoader:(Loader*)loader {
    _loader = loader;

    return self;
}

- (instancetype)init {
    self = [super init];

    if (self) {
      _loader = [[Loader alloc] init];
    }

    return self;
}

- (void)getGithubReposWithUsername:(NSString*)userName
                      SuccessBlock:(void(^)(NSArray *repositories))successBlock
                        errorBlock:(void(^)(NSError *error))errorBlock {

    NSString *urlString = [[NSString alloc] initWithFormat:endPoint, userName];

    [_loader getRequest:urlString SuccessBlock:^(NSDictionary *repos) {
        NSMutableArray *repositories = [[NSMutableArray alloc] init];

         for (NSDictionary *dict in repos) {
              Repository *repository = [[Repository alloc] initWithDict:dict];

             [repositories addObject:repository];
         }

        successBlock(repositories);

    } errorBlock:^(NSError *error) {
        errorBlock(error);
    }];

}

@end
