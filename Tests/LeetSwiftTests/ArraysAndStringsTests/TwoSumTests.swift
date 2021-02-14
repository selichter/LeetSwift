//
//  File.swift
//  
//
//  Created by Sarah Lichter on 2/14/21.
//

import XCTest
@testable import LeetSwift

class TwoSumTests: XCTestCase {
    
    func testFirstTwoPositionsAddUpToTarget() {
        let input = [2,7,11,15]
        let target = 9
        
        XCTAssertEqual(twoSum(input, target), [0, 1])
    }
    
    func testOnlyElementsInArrayAddUpToTarget() {
        let input = [3, 3]
        let target = 6
        
        XCTAssertEqual(twoSum(input, target), [0, 1])
    }
    
    func testElementsInMiddleAndEndAddUpToTarget() {
        let input = [3, 2, 4]
        let target = 6
        
        XCTAssertEqual(twoSum(input, target), [1, 2])
    }

}
