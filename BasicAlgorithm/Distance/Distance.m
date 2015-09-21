//
//  Distance.m
//  BasicAlgorithm
//
//  Created by sy2036 on 2015-09-21.
//  Copyright (c) 2015 Roselifeye. All rights reserved.
//

#import "Distance.h"
#import "BasicMath.h"

@implementation Distance

+ (double)EuclideanDistanceWithFirstArray:(NSArray *)firstArray toSecondArray:(NSArray *)secondArray {
    double distance = .0f;
    if ([BasicMath LengthIsEqualWithFirstArray:firstArray andSecondArray:secondArray]) {
        return 0;
    }
    double sumDistance = .0f;
    for (int i = 0; i < [firstArray count]; i++) {
        double firstValue = [[firstArray objectAtIndex:i] doubleValue];
        double secondValue = [[secondArray objectAtIndex:i] doubleValue];
        sumDistance += powf((firstValue - secondValue), 2);
    }
    distance = sqrtf(sumDistance);
    
    return distance;
}

+ (double)ManhattanDistanceWithFirstArray:(NSArray *)firstArray toSecondArray:(NSArray *)secondArray {
    double distance = 0.f;
    if ([BasicMath LengthIsEqualWithFirstArray:firstArray andSecondArray:secondArray]) {
        return 0;
    }
    for (int i = 0; i < [firstArray count]; i++) {
        double firstValue = [[firstArray objectAtIndex:i] doubleValue];
        double secondValue = [[secondArray objectAtIndex:i] doubleValue];
        distance += fabs(firstValue - secondValue);
    }
    return distance;
}

+ (double)ChebyshevDistanceWithFirstArray:(NSArray *)firstArray toSecondArray:(NSArray *)secondArray {
    double distance = 0.f;
    if ([BasicMath LengthIsEqualWithFirstArray:firstArray andSecondArray:secondArray]) {
        return 0;
    }
    for (int i = 0; i < [firstArray count]; i++) {
        double firstValue = [[firstArray objectAtIndex:i] doubleValue];
        double secondValue = [[secondArray objectAtIndex:i] doubleValue];
        distance = MAX(distance, fabs(firstValue - secondValue));
    }
    return distance;
}

@end
