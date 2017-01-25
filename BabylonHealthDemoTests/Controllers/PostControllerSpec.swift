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
