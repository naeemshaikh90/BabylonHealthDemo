//
//  PostControllerSpec.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 12/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import BabylonHealthDemo

struct BabylonAPICallsMock: BabylonAPICalls {
  let post: [BabylonHealthDemo.Post]
  
  func posts(completion: @escaping ([Post]?) -> Void) {
    completion(post)
  }
}

class PostControllerSpec: QuickSpec {
  override func spec() {
    describe("PostController") {
      var controller: PostController!
      var apiMock: BabylonAPICalls!
      
      beforeEach {
        let testBundle = Bundle(for: type(of: self))
        let mockLoader = MockLoader(file: "Post", in: testBundle)
        let post = (mockLoader?.map(to: Post.self))!
        apiMock = BabylonAPICallsMock(post: [post])
        
        controller = Storyboard.Main.postControllerScene.viewController() as! PostController
        controller.apiManager = apiMock
        
        //Load view components
        let _ = controller.view
      }
      
      it("should have expected props setup") {
        controller.viewDidLoad()
        expect(controller.apiManager).toNot(beNil())
        expect(controller.tableDatasource).toNot(beNil())
        expect(controller.tableDelegate).toNot(beNil())
        expect(controller.posts).toNot(beNil())
        expect(controller.tableView).toNot(beNil())
      }
    }
  }
}
