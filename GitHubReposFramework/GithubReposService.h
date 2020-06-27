#import <Foundation/Foundation.h>
#import "Loader.h"

NS_ASSUME_NONNULL_BEGIN

@interface GithubReposService : NSObject

/// A convenience constructor that initializes with Loader
/// @param loader Network Loader
- (instancetype)initWithLoader:(Loader*)loader;

///
/// @param userName Github username i.e fabpot
/// @param successBlock returns the array of Repository belonging to the username
/// @param errorBlock return error
 - (void)getGithubReposWithUsername:(NSString*)userName
                      SuccessBlock:(void(^)(NSArray *repositories))successBlock
                        errorBlock:(void(^)(NSError *error))errorBlock;
@end

NS_ASSUME_NONNULL_END
