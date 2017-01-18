//
//  GeoSpec.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 17/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Quick
import Nimble
@testable import BabylonHealthDemo

class GeoSpec: QuickSpec {
  override func spec() {
    describe("a geo") {
      var geo: BabylonHealthDemo.Geo!
      
      beforeEach {
        let testBundle = Bundle(for: type(of: self))
        let mockLoader = MockLoader(file: "Geo", in: testBundle)
        geo = mockLoader?.map(to: Geo.self)
      }
      
      it("should be able to create a geo from json") {
        expect(geo).toNot(beNil())
      }
      
      it("should have a lat") {
        expect(geo.lat).toNot(beNil())
      }
      
      it("should have a lng") {
        expect(geo.lng).toNot(beNil())
      }
      
      it("should have a timeSaved") {
        expect(geo.timeSaved).toNot(beNil())
      }
    }
  }
}

