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
      
      it("should have a timeSaved") {
        expect(user.timeSaved).toNot(beNil())
      }
    }
  }
}
