//
//  Company.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

class Company: Object {
  dynamic var bs: String = ""
  dynamic var catchPhrase: String = ""
  dynamic var name: String = ""
  
  required convenience init(map: Map) {
    self.init()
  }
}

extension Company: Mappable {
  func mapping(map: Map) {
    bs          <- map["bs"]
    catchPhrase <- map["catchPhrase"]
    name        <- map["name"]
  }
}
