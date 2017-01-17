//
//  PostDetailControllerSpec.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 17/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import BabylonHealthDemo

struct BabylonAPICallsMockDetails: BabylonAPICalls {
  let posts: [BabylonHealthDemo.Post]
  let users: [BabylonHealthDemo.User]
  let comments: [BabylonHealthDemo.Comment]
  
  func posts(completion: @escaping ([Post]?) -> Void) {
    completion(posts)
  }
  
  func users(completion: @escaping ([User]?) -> Void) {
    completion(users)
  }
  
  func comments(completion: @escaping ([Comment]?) -> Void) {
    completion(comments)
  }
}

class PostDetailControllerSpec: QuickSpec {
  override func spec() {
    describe("PostDetailController") {
      var controller: PostDetailController!
      var apiMock: BabylonAPICalls!
      
      beforeEach {
        let testBundle = Bundle(for: type(of: self))
        let mockLoaderPost = MockLoader(file: "Post", in: testBundle)
        let mockLoaderUser = MockLoader(file: "User", in: testBundle)
        let mockLoaderComment = MockLoader(file: "Comment", in: testBundle)
        
        let post = (mockLoaderPost?.map(to: Post.self))!
        let user = (mockLoaderUser?.map(to: User.self))!
        let comment = (mockLoaderComment?.map(to: Comment.self))!
        
        apiMock = BabylonAPICallsMockDetails(posts: [post], users: [user], comments: [comment])
        controller = Storyboard.Main.postDetailControllerScene.viewController() as! PostDetailController
        controller.apiManager = apiMock
        controller.post = post
        
        //Load view components
        let _ = controller.view
      }
      
      it("should have expected props setup") {
        controller.viewDidLoad()
        expect(controller.apiManager).toNot(beNil())
        expect(controller.tableDatasource).toNot(beNil())
        expect(controller.tableDelegate).toNot(beNil())
        expect(controller.post).toNot(beNil())
        expect(controller.comments).toNot(beNil())
        expect(controller.users).toNot(beNil())
        expect(controller.tableView).toNot(beNil())
      }
    }
  }
}

