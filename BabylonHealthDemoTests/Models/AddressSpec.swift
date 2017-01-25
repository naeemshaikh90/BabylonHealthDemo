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
      
      it("should have a timeSaved") {
        expect(address.timeSaved).toNot(beNil())
      }
    }
  }
}
