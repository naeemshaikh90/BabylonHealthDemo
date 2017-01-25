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

