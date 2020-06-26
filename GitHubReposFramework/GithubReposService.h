#import <Foundation/Foundation.h>
#import "Loader.h"

NS_ASSUME_NONNULL_BEGIN

@interface GithubReposService : NSObject

@property (nonatomic, readonly) Loader *loader;

- (instancetype)initWithLoader:(Loader*)loader;

 - (void)getGithubReposWithUsername:(NSString*)userName
                      SuccessBlock:(void(^)(NSDictionary *repos))successBlock
                        errorBlock:(void(^)(NSError *error))errorBlock;
@end

NS_ASSUME_NONNULL_END
