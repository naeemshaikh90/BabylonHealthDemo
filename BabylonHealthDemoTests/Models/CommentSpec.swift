//
//  CommentSpec.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 17/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

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

