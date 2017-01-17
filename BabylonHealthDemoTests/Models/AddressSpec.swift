//
//  AddressSpec.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 17/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Quick
import Nimble
@testable import BabylonHealthDemo

class AddressSpec: QuickSpec {
  override func spec() {
    describe("a address") {
      var address: BabylonHealthDemo.Address!
      
      beforeEach {
        let testBundle = Bundle(for: type(of: self))
        let mockLoader = MockLoader(file: "Address", in: testBundle)
        address = mockLoader?.map(to: Address.self)
      }
      
      it("should be able to create a address from json") {
        expect(address).toNot(beNil())
      }
      
      it("should have a city") {
        expect(address.city).toNot(beNil())
      }
      
      it("should have a valid city") {
        expect(address.city).to(equal("Gwenborough"))
      }
        
      it("should have a street") {
        expect(address.street).toNot(beNil())
      }
      
      it("should have a suite") {
        expect(address.suite).toNot(beNil())
      }
      
      it("should have a zipcode") {
        expect(address.suite).toNot(beNil())
      }
      
      it("should have a geo") {
        expect(address.geo).toNot(beNil())
      }
      
      it("should have a geo-lat") {
        expect(address.geo.lat).toNot(beNil())
      }
      
      it("should have a geo-lng") {
        expect(address.geo.lng).toNot(beNil())
      }
    }
  }
}
