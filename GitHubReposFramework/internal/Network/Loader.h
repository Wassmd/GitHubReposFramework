#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Loader : NSObject

- (void)getRequest:(NSString*)urlString
      SuccessBlock:(void(^)(NSDictionary *repos))successBlock
        errorBlock:(void(^)(NSError *error))errorBlock;

@end

NS_ASSUME_NONNULL_END
