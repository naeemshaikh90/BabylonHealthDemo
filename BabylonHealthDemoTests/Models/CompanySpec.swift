//
//  CompanySpec.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 17/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Quick
import Nimble
@testable import BabylonHealthDemo

class CompanySpec: QuickSpec {
  override func spec() {
    describe("a company") {
      var company: BabylonHealthDemo.Company!
      
      beforeEach {
        let testBundle = Bundle(for: type(of: self))
        let mockLoader = MockLoader(file: "Company", in: testBundle)
        company = mockLoader?.map(to: Company.self)
      }
      
      it("should be able to create a company from json") {
        expect(company).toNot(beNil())
      }
    
      it("should have a bs") {
        expect(company.bs).toNot(beNil())
      }
      
      it("should have a catchPhrase") {
        expect(company.catchPhrase).toNot(beNil())
      }
      
      it("should have a name") {
        expect(company.name).toNot(beNil())
      }
      
      it("should have a timeSaved") {
        expect(company.timeSaved).toNot(beNil())
      }
    }
  }
}

