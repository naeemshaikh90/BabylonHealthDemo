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

class User: Object {
  dynamic var address: Address!
  dynamic var company: Company!
  dynamic var email: String!
  dynamic var id: Int = 0
  dynamic var name: String!
  dynamic var phone: String!
  dynamic var username: String!
  dynamic var website: String!
  dynamic var timeSaved = Date()
  
  required convenience init(map: Map) {
    self.init()
  }
}

extension User: Mappable {
  override static func primaryKey() -> String? {
    return "id"
  }
  
  func mapping(map: Map) {
    id        <- map["id"]
    name      <- map["name"]
    username  <- map["username"]
    email     <- map["email"]
    address   <- map["address"]
    phone     <- map["phone"]
    website   <- map["website"]
    company   <- map["company"]
    timeSaved <- map["timeSaved"]
  }
}
