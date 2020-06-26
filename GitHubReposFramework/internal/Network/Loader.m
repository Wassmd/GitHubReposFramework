#import "Loader.h"
#import "AFNetworking.h"

NSString* const endPoint = @"https://api.github.com/users/%@/repos";

@implementation Loader

- (void)getRequest:(NSString*)urlString
      SuccessBlock:(void(^)(NSDictionary *repos))successBlock
        errorBlock:(void(^)(NSError *error))errorBlock {

    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:urlString parameters: NULL headers:NULL progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"Wasim inside download Progress");
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *reposDict = (NSDictionary *)responseObject;
        NSLog(@"responseString:%@",reposDict);
        successBlock(reposDict);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"Wasim failure: %@", error);
        errorBlock(error);
    }];
}

@end
