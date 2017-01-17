//
//  UserSpec.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 17/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Quick
import Nimble
@testable import BabylonHealthDemo

class UserSpec: QuickSpec {
  override func spec() {
    describe("a user") {
      var user: BabylonHealthDemo.User!
      
      beforeEach {
        let testBundle = Bundle(for: type(of: self))
        let mockLoader = MockLoader(file: "User", in: testBundle)
        user = mockLoader?.map(to: User.self)
      }
      
      it("should be able to create a user from json") {
        expect(user).toNot(beNil())
      }
      
      it("should have a id") {
        expect(user.id).toNot(beNil())
      }
      
      it("should have a name") {
        expect(user.name).toNot(beNil())
      }
      
      it("should have a username") {
        expect(user.username).toNot(beNil())
      }
      
      it("should have a email") {
        expect(user.email).toNot(beNil())
      }
      
      it("should have a phone") {
        expect(user.phone).toNot(beNil())
      }
      
      it("should have a website") {
        expect(user.website).toNot(beNil())
      }
      
      it("should have a address") {
        expect(user.address).toNot(beNil())
      }
      
      it("should have a address-city") {
        expect(user.address.city).toNot(beNil())
      }
      
      it("should have a address-street") {
        expect(user.address.street).toNot(beNil())
      }
      
      it("should have a address-suite") {
        expect(user.address.suite).toNot(beNil())
      }
      
      it("should have a address-zipcode") {
        expect(user.address.zipcode).toNot(beNil())
      }
      
      it("should have a address-geo") {
        expect(user.address.geo).toNot(beNil())
      }
      
      it("should have a address-geo-lat") {
        expect(user.address.geo.lat).toNot(beNil())
      }
      
      it("should have a address-geo-lng") {
        expect(user.address.geo.lng).toNot(beNil())
      }
    
      it("should have a company") {
        expect(user.company).toNot(beNil())
      }
      
      it("should have a company-bs") {
        expect(user.company.bs).toNot(beNil())
      }
      
      it("should have a company-catchPhrase") {
        expect(user.company.catchPhrase).toNot(beNil())
      }
      
      it("should have a company-name") {
        expect(user.company.name).toNot(beNil())
      }
    }
  }
}
