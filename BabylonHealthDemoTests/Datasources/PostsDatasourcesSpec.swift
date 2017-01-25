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

class PostsDatasourceSpec: QuickSpec {
  override func spec() {
    describe("PostsDatasource") {
      var controller: PostController!
      var post: BabylonHealthDemo.Post!
      
      beforeEach {
        let testBundle = Bundle(for: type(of: self))
        let mockLoader = MockLoader(file: "Post", in: testBundle)
        post = (mockLoader?.map(to: Post.self))!
        
        let apiMock = BabylonAPICallsMock(posts: [post])
        controller = Storyboard.Main.postControllerScene.viewController() as! PostController
        controller.apiManager = apiMock
        
        //Load view components
        let _ = controller.view
      }
      
      it("should have a valid datasource") {
        expect(controller.collectionDatasource).toNot(beNil())
      }
      
      it("should have a cell of expected type") {
        let indexPath = IndexPath(row: 0, section: 0)
        let cell = controller.collectionDatasource!.collectionView(controller.collectionView, cellForItemAt: indexPath)
        expect(cell.isKind(of: PostCollectionCell.self)).to(beTruthy())
      }
      
      it("should have a configured cell") {
        let indexPath = IndexPath(row: 0, section: 0)
        let cell = controller.collectionDatasource!.collectionView(controller.collectionView, cellForItemAt: indexPath) as! PostCollectionCell
        let name = cell.postTitle.text!
        expect(name).to(equal(post.title))
      }
      
      it("should have the right numberOfItemsInSection") {
        let count = controller.collectionDatasource!.collectionView(controller.collectionView, numberOfItemsInSection: 0)
        expect(count).to(beGreaterThan(0))
      }
    }
  }
}
