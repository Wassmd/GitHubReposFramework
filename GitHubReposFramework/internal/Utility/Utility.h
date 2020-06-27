#import <Foundation/Foundation.h>

#define CASTED_NOT_NULL_VALUE(inValue, inClass)  ((inClass*)NotNullValue(inValue, [inClass class]))

extern inline id NotNullValue(id inValue, Class inClass);
