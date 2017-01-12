// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation
import UIKit
import BabylonHealthDemo

// swiftlint:disable file_length
// swiftlint:disable line_length
// swiftlint:disable type_body_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: nil)
  }

  static func initialViewController() -> UIViewController {
    guard let vc = storyboard().instantiateInitialViewController() else {
      fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
    }
    return vc
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func viewController() -> UIViewController {
    return Self.storyboard().instantiateViewController(withIdentifier: self.rawValue)
  }
  static func viewController(identifier: Self) -> UIViewController {
    return identifier.viewController()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension UIViewController {
  func perform<S: StoryboardSegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

struct Storyboard {
  enum LaunchScreen: StoryboardSceneType {
    static let storyboardName = "LaunchScreen"
  }
  enum Main: String, StoryboardSceneType {
    static let storyboardName = "Main"

    static func initialViewController() -> UINavigationController {
      guard let vc = storyboard().instantiateInitialViewController() as? UINavigationController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case postControllerScene = "PostController"
    static func instantiatePostController() -> BabylonHealthDemo.PostController {
      guard let vc = Storyboard.Main.postControllerScene.viewController() as? BabylonHealthDemo.PostController
      else {
        fatalError("ViewController 'PostController' is not of the expected class BabylonHealthDemo.PostController.")
      }
      return vc
    }

    case postDetailControllerScene = "PostDetailController"
    static func instantiatePostDetailController() -> BabylonHealthDemo.PostDetailController {
      guard let vc = Storyboard.Main.postDetailControllerScene.viewController() as? BabylonHealthDemo.PostDetailController
      else {
        fatalError("ViewController 'PostDetailController' is not of the expected class BabylonHealthDemo.PostDetailController.")
      }
      return vc
    }
  }
}

struct StoryboardSegue {
}
