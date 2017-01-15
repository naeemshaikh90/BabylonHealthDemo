//
//  BabylonAPIManager.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import Moya
import RxSwift
import ObjectMapper
import Moya_ObjectMapper
import RealmSwift

extension Response {
  func removeAPIWrappers() -> Response {
    guard let json = try? self.mapJSON() as? [[String: AnyObject]],
      let results = json,
      let newData = try? JSONSerialization.data(withJSONObject: results, options: .prettyPrinted) else {
        return self
    }
    
    let newResponse = Response(statusCode: self.statusCode,
                               data: newData,
                               response: self.response)
    return newResponse
  }
}

struct BabylonAPIManger {
  let provider: RxMoyaProvider<BabylonAPI>
  let disposeBag = DisposeBag()
  
  init() {
    provider = RxMoyaProvider<BabylonAPI>()
  }
}

extension BabylonAPIManger {
  typealias AdditionalStepsAction = (() -> ())
  
  fileprivate func requestObject<T: Mappable>(_ token: BabylonAPI, type: T.Type,
                                 completion: @escaping (T?) -> Void,
                                 additionalSteps: AdditionalStepsAction? = nil) {
    provider.request(token)
      .debug()
      .mapObject(T.self)
      .subscribe { event -> Void in
        switch event {
        case .next(let parsedObject):
          self.saveOfflineData([parsedObject])
          completion(parsedObject)
          additionalSteps?()
        case.error(let error):
          print(error)
          completion(nil)
        default:
          break
        }
    }.addDisposableTo(disposeBag)
  }
  
  fileprivate func requestArray<T: Mappable>(_ token: BabylonAPI, type: T.Type,
                                completion: @escaping ([T]?) -> Void,
                                additionalSteps: AdditionalStepsAction? = nil) {
    provider.request(token)
      .debug()
      .map { respose -> Response in
        return respose.removeAPIWrappers()
      }
      .mapArray(T.self)
      .subscribe { event -> Void in
        switch event {
        case .next(let parsedArray):
          self.saveOfflineData(parsedArray)
          completion(parsedArray)
          additionalSteps?()
        case .error(let error):
          print(error)
          completion(nil)
        default:
          break
        }
      }.addDisposableTo(disposeBag)
  }
  
  fileprivate func saveOfflineData(_ parsedArray: Array<Any>) {
    do {
      let realm = try Realm()
      try realm.write {
        for element in parsedArray {
          realm.add(element as! Object, update: true)
        }
      }
    } catch let error as NSError {
      print(error.localizedDescription)
    }
  }
}

protocol BabylonAPICalls {
  func posts(completion: @escaping ([Post]?) -> Void)
  func users(completion: @escaping ([User]?) -> Void)
  func user(userId: Int, completion: @escaping (User?) -> Void)
  func comments(completion: @escaping ([Comment]?) -> Void)
}

extension BabylonAPIManger: BabylonAPICalls {
  func posts(completion: @escaping ([Post]?) -> Void) {
    requestArray(.posts(),
                 type: Post.self,
                 completion: completion)
  }
  
  func users(completion: @escaping ([User]?) -> Void) {
    requestArray(.users(),
                  type: User.self,
                  completion: completion)
  }
  
  func user(userId: Int, completion: @escaping (User?) -> Void) {
    requestObject(.user(userId),
                 type: User.self,
                 completion: completion)
  }
  
  func comments(completion: @escaping ([Comment]?) -> Void) {
    requestArray(.comments(),
                 type: Comment.self,
                 completion: completion)
  }
}
