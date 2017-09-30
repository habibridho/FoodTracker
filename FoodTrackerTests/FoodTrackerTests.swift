//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Habib Ridho on 9/19/17.
//  Copyright © 2017 Habib Ridho. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
  // MARK: Meal class test
  func testMealInitialization() {
    let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
    XCTAssertNotNil(zeroRatingMeal)
    
    let highestRatingMeal = Meal.init(name: "Highest", photo: nil, rating: 5)
    XCTAssertNotNil(highestRatingMeal)
  }
  
  func testMealShouldFail() {
    let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
    XCTAssertNil(negativeRatingMeal)
    
    let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
    XCTAssertNil(emptyStringMeal)
    
    let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
    XCTAssertNil(largeRatingMeal)
  }
    
}
