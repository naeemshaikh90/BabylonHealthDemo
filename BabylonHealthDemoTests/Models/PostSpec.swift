//
//  PostSpec.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Quick
import Nimble
@testable import BabylonHealthDemo

class PostSpec: QuickSpec {
  override func spec() {
    describe("a post") {
      var post: BabylonHealthDemo.Post!
      
      beforeEach {
        let testBundle = Bundle(for: type(of: self))
        let mockLoader = MockLoader(file: "Post", in: testBundle)
        post = mockLoader?.map(to: Post.self)
      }
      
      it("should be able to create a post from json") {
        expect(post).toNot(beNil())
      }
      
      it("should have a userId") {
        expect(post.userId).toNot(beNil())
      }
      
      it("should have a id") {
        expect(post.id).toNot(beNil())
      }
      
      it("should have a title") {
        expect(post.title).toNot(beNil())
      }
      
      it("should have a body") {
        expect(post.body).toNot(beNil())
      }
    }
  }
}
