#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Repository : NSObject

-(id)initWithDict:(NSDictionary*)inDict;

@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *repoDescription;

@end

NS_ASSUME_NONNULL_END
