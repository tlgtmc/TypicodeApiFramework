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
    
    func testFetchUserData() {
        
        let e = expectation(description: "Expecting a JSON data not nil")
        
        var userList: [User] = []
        ApiCall.getUsers() { apiResponse in
            switch(apiResponse.status) {
            case .success:
                userList  =  apiResponse.responseList as! [User]
                XCTAssertTrue(userList.count>0)
                e.fulfill()
            case .failure:
                print(apiResponse.error)
            }
        }
        
        waitForExpectations(timeout: 5.0, handler: nil)
        
    }
    
   func testFetchAndFilterPostData() {
        
       let e = expectation(description: "Expecting a Posts data not nil")
                
        
        ApiCall.getPosts() { apiResponse in
            switch(apiResponse.status) {
            case .success:
                let _posts = apiResponse.responseList as! [Post]
                
                XCTAssertTrue(_posts.count>0)
                print("Count: \(_posts.count)")
                let posts = _posts.filter{$0.userId == 1}
                print("User's Filtered Post Count: \(posts.count)")
                XCTAssertTrue(_posts.count>=posts.count)
                e.fulfill()
            case .failure:
                print(apiResponse.error)
            }
        }

        waitForExpectations(timeout: 5.0, handler: nil)
    }

}
