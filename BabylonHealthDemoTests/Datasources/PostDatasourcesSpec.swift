/**
 * Copyright © 2017-present Naeem Shaikh
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

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

