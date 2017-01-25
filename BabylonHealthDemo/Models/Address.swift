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

import Foundation
import ObjectMapper
import RealmSwift

class Address: Object {
  dynamic var geo: Geo!
  dynamic var city: String = ""
  dynamic var street: String = ""
  dynamic var suite: String = ""
  dynamic var zipcode: String = ""
  dynamic var timeSaved = Date()
  
  required convenience init(map: Map) {
    self.init()
  }
}

extension Address: Mappable {
  func mapping(map: Map) {
    city      <- map["city"]
    geo       <- map["geo"]
    street    <- map["street"]
    suite     <- map["suite"]
    zipcode   <- map["zipcode"]
    timeSaved <- map["timeSaved"]
  }
}
