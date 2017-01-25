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

import Quick
import Nimble
@testable import BabylonHealthDemo

class CommentSpec: QuickSpec {
  override func spec() {
    describe("a comment") {
      var comment: BabylonHealthDemo.Comment!
      
      beforeEach {
        let testBundle = Bundle(for: type(of: self))
        let mockLoader = MockLoader(file: "Comment", in: testBundle)
        comment = mockLoader?.map(to: Comment.self)
      }
      
      it("should be able to create a comment from json") {
        expect(comment).toNot(beNil())
      }
      
      it("should have a id") {
        expect(comment.id).toNot(beNil())
      }
      
      it("should have a postId") {
        expect(comment.postId).toNot(beNil())
      }
      
      it("should have a name") {
        expect(comment.name).toNot(beNil())
      }
      
      it("should have a body") {
        expect(comment.body).toNot(beNil())
      }
      
      it("should have a email") {
        expect(comment.email).toNot(beNil())
      }
      
      it("should have a timeSaved") {
        expect(comment.timeSaved).toNot(beNil())
      }
    }
  }
}

