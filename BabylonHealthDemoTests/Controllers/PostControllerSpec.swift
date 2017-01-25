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
  let posts: [BabylonHealthDemo.Post]
  
  func posts(completion: @escaping ([Post]?) -> Void) {
    completion(posts)
  }
  
  func users(completion: @escaping ([User]?) -> Void) {
    
  }
  
  func comments(completion: @escaping ([Comment]?) -> Void) {
    
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
        
        apiMock = BabylonAPICallsMock(posts: [post])
        controller = Storyboard.Main.postControllerScene.viewController() as! PostController
        controller.apiManager = apiMock
        
        //Load view components
        let _ = controller.view
      }
      
      it("should have expected props setup") {
        controller.viewDidLoad()
        expect(controller.apiManager).toNot(beNil())
        expect(controller.collectionDatasource).toNot(beNil())
        expect(controller.collectionDelegate).toNot(beNil())
        expect(controller.posts).toNot(beNil())
        expect(controller.collectionView).toNot(beNil())
      }
      
      it("should use mock response on fetchPosts") {
        controller.viewDidLoad()
        let count = controller.collectionDatasource?.posts.count ?? 0
        expect(count).toEventually(equal(1))
      }
    }
  }
}
