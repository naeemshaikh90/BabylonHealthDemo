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

