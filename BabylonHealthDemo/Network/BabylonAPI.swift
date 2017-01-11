//
//  BabylonAPI.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import Moya

enum BabylonAPI {
  case posts()
  case users()
  case comments()
}

extension BabylonAPI: TargetType {
  var baseURL: URL { return URL(string: "http://jsonplaceholder.typicode.com/")! }
  
  var path: String {
    switch self {
    case .posts:
      return "posts"
    case .users:
      return "users"
    case .comments:
      return "comments"
    }
  }
		
  var method: Moya.Method {
    switch self {
    case .posts, .users, .comments:
      return .get
    }
  }
  
  var parameters: [String: Any]? {
    switch self {
    default:
      return ["":""]
    }
  }
  
  var parameterEncoding: ParameterEncoding {
    return URLEncoding.default
  }
  
  var sampleData: Data {
    switch self {
    default:
      return Data()
    }
  }
  
  var task: Task {
    return .request
  }
}
