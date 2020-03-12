//
//  TypicodeApiFrameworkTests.swift
//  TypicodeApiFrameworkTests
//
//  Created by Tolga Atmaca on 12.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//

import XCTest
@testable import TypicodeApiFramework

class TypicodeApiFrameworkTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testApiCall() {
        
        ApiCall.getUsers { userResponse in
            if userResponse.status == .success {
                let userList = userResponse.responseList as! [User]
                XCTAssertTrue(userList.count>0)
            } else {
                
            }
        }
        
        
    }
    
    func testApiResponse() {
        ApiCall.getPosts() { apiResponse in
            if apiResponse.status == .success {
                let userList = apiResponse.responseList as! [User]
                print(userList)
                XCTAssertTrue(userList.count>0)
            } else {
                
            }
        }
    }

}
