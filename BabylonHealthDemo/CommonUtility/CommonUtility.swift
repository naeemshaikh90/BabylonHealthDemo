//
//  CommonUtility.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 16/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit
import Reachability
import SwifterSwift

let kErrorCommon = "Something went wrong, please try again later."
let kErrorNotConnected = "No Internet Connection. Please Try Again"

class CommonUtility: NSObject {
  class func isConnected() -> Bool{
    let reachability:Reachability = Reachability.forInternetConnection()
    let networkStatus = reachability.currentReachabilityStatus().rawValue
    return networkStatus != 0
  }
  
  class func showNotConnected() {
    ShowAlert(myTitle: "Error", myMessage: kErrorNotConnected)
  }
  
  class func showError(_ error: Error) {
    ShowAlert(myTitle: "Error", myMessage: error.localizedDescription)
  }
  
  class func ShowAlert(myTitle: String , myMessage message: String) {
    let alert = UIAlertController(title: myTitle, message: message)
    alert.show()
  }
}
