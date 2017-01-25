//
//  PostXCTest.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 18/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import XCTest
@testable import BabylonHealthDemo

class PostXCTest: XCTestCase {
  var post: BabylonHealthDemo.Post!
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    let testBundle = Bundle(for: type(of: self))
    let mockLoader = MockLoader(file: "Post", in: testBundle)
    post = mockLoader?.map(to: Post.self)
  }
  
  func testInitialization() {
    XCTAssertNotNil(post)
  }
}
