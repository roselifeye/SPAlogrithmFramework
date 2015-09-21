//
//  Distance.m
//  BasicAlgorithm
//
//  Created by sy2036 on 2015-09-21.
//  Copyright (c) 2015 Roselifeye. All rights reserved.
//

#import "Distance.h"

@implementation Distance

+ (BOOL)arrayLengthIsEqualWithFirstArray:(NSArray *)firstArray andSecondArray:(NSArray *)secondArray {
    BOOL isEqual = NO;
    if ([firstArray count] == [secondArray count]) {
        isEqual = YES;
    } else {
        NSLog(@"The Length of the Two Array is not the same, Please Check.");
    }
    return isEqual;
}

+ (CGFloat)EuclideanDistanceWithFirstArray:(NSArray *)firstArray toSecondArray:(NSArray *)secondArray {
    CGFloat distance = .0f;
    if ([self arrayLengthIsEqualWithFirstArray:firstArray andSecondArray:secondArray]) {
        return 0;
    }
    CGFloat sumDistance = .0f;
    for (int i = 0; i < [firstArray count]; i++) {
        CGFloat firstValue = [[firstArray objectAtIndex:i] floatValue];
        CGFloat secondValue = [[secondArray objectAtIndex:i] floatValue];
        sumDistance += powf((firstValue - secondValue), 2);
    }
    distance = sqrtf(sumDistance);
    
    return distance;
}

+ (CGFloat)ManhattanDistanceWithFirstArray:(NSArray *)firstArray toSecondArray:(NSArray *)secondArray {
    CGFloat distance = 0.f;
    if ([self arrayLengthIsEqualWithFirstArray:firstArray andSecondArray:secondArray]) {
        return 0;
    }
    for (int i = 0; i < [firstArray count]; i++) {
        CGFloat firstValue = [[firstArray objectAtIndex:i] floatValue];
        CGFloat secondValue = [[secondArray objectAtIndex:i] floatValue];
        distance += fabs(firstValue - secondValue);
    }
    return distance;
}

+ (CGFloat)ChebyshevDistanceWithFirstArray:(NSArray *)firstArray toSecondArray:(NSArray *)secondArray {
    CGFloat distance = 0.f;
    if ([self arrayLengthIsEqualWithFirstArray:firstArray andSecondArray:secondArray]) {
        return 0;
    }
    for (int i = 0; i < [firstArray count]; i++) {
        CGFloat firstValue = [[firstArray objectAtIndex:i] floatValue];
        CGFloat secondValue = [[secondArray objectAtIndex:i] floatValue];
        distance = MAX(distance, fabs(firstValue - secondValue));
    }
    return distance;
}

@end
