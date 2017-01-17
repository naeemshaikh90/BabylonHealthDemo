//
//  PostDatasourcesSpec.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 17/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import Quick
import Nimble
import RealmSwift
@testable import BabylonHealthDemo

class PostDatasourceSpec: QuickSpec {
  override func spec() {
    describe("PostDatasource") {
      var controller: PostDetailController!
      var post: BabylonHealthDemo.Post!
      var user: BabylonHealthDemo.User!
      var comment: BabylonHealthDemo.Comment!
      
      // Clear save data first!
      do {
        let realm = try Realm()
        try realm.write {
          realm.deleteAll()
        }
      } catch let error as NSError {
        print(error.localizedDescription)
      }
      
      beforeEach {
        let testBundle = Bundle(for: type(of: self))
        let mockLoaderPost = MockLoader(file: "Post", in: testBundle)
        let mockLoaderUser = MockLoader(file: "User", in: testBundle)
        let mockLoaderComment = MockLoader(file: "Comment", in: testBundle)
        
        post = (mockLoaderPost?.map(to: Post.self))!
        user = (mockLoaderUser?.map(to: User.self))!
        comment = (mockLoaderComment?.map(to: Comment.self))!
        
        let apiMock = BabylonAPICallsMockDetails(posts: [post], users: [user], comments: [comment])
        controller = Storyboard.Main.postDetailControllerScene.viewController() as! PostDetailController
        controller.apiManager = apiMock
        controller.post = post
        
        //Load view components
        let _ = controller.view
      }
      
      it("should have a valid datasource") {
        expect(controller.tableDatasource).toNot(beNil())
      }
      
      it("should have a cell of expected type: PostCell") {
        let indexPath = IndexPath(row: 0, section: 0)
        let cell = controller.tableDatasource!.tableView(controller.tableView, cellForRowAt: indexPath)
        expect(cell.isKind(of: PostCell.self)).to(beTruthy())
      }
      
      it("should have a cell of expected type: CommentCell") {
        let indexPath = IndexPath(row: 0, section: 1)
        let cell = controller.tableDatasource!.tableView(controller.tableView, cellForRowAt: indexPath)
        expect(cell.isKind(of: CommentCell.self)).to(beTruthy())
      }
      
      it("should have a configured cell: PostCell") {
        let indexPath = IndexPath(row: 0, section: 0)
        let cell = controller.tableDatasource!.tableView(controller.tableView, cellForRowAt: indexPath) as! PostCell
        let name = cell.postTitle.text!
        expect(name).to(equal(post.title))
      }
      
      it("should have a configured cell: CommentCell") {
        let indexPath = IndexPath(row: 0, section: 1)
        let cell = controller.tableDatasource!.tableView(controller.tableView, cellForRowAt: indexPath) as! CommentCell
        let name = cell.commentTitle.text!
        expect(name).to(equal(comment.name))
      }
      
      it("should have the right numberOfItemsInSection") {
        let postCount = controller.tableDatasource!.tableView(controller.tableView, numberOfRowsInSection: 0)
        expect(postCount).to(equal(1))
        
        let commentCount = controller.tableDatasource!.tableView(controller.tableView, numberOfRowsInSection: 1)
        expect(commentCount).to(equal(1))
      }
    }
  }
}

