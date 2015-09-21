//
//  Distance.h
//  BasicAlgorithm
//
//  Created by sy2036 on 2015-09-21.
//  Copyright (c) 2015 Roselifeye. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Distance : NSObject

/**
 *  Euclidean Distance
 *
 *  @param firstArray  The first vector
 *  @param secondArray The second vector
 *
 *  @return Distance.
 */
+ (CGFloat)EuclideanDistanceWithFirstArray:(NSArray *)firstArray toSecondArray:(NSArray *)secondArray;

/**
 *  Also called CityBlock Distance
 *
 *  @param firstArray  The first vector
 *  @param secondArray The second vector
 *
 *  @return Distance.
 */
+ (CGFloat)ManhattanDistanceWithFirstArray:(NSArray *)firstArray toSecondArray:(NSArray *)secondArray;

+ (CGFloat)ChebyshevDistanceWithFirstArray:(NSArray *)firstArray toSecondArray:(NSArray *)secondArray;

@end
