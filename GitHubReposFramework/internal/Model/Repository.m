#import "Repository.h"
#import "Utility.h"

@implementation Repository

-(id)initWithDict:(NSDictionary*)inDict {

    self = [super self];
    if (self) {

        _name           = CASTED_NOT_NULL_VALUE(inDict[@"name"],NSString);
        _repoDescription = CASTED_NOT_NULL_VALUE(inDict[@"description"],NSString);
    }

    return self;
}

-(NSString*)description {
    return [NSString stringWithFormat:@"_name:%@,_repoDescription:%@",_name,_repoDescription];
}

@end
