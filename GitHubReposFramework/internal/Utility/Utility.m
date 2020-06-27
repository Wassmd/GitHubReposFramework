#import "Utility.h"

inline id NotNullValue(id inValue, Class inClass)
{
    if (![inValue isKindOfClass:inClass])
    {
        if(inClass == [NSString class])
            return @"";

        return nil;
    }
    else
    {
        return (Class)inValue;
    }
}
