//
//  PostController.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit
import Alamofire

protocol PostDelegate {
  func didSelectPost(at index: IndexPath)
}

final class PostController: UIViewController {
  var apiManager: BabylonAPICalls = BabylonAPIManger()
  var posts: [Post] = []
  
  var tableDatasource: PostDatasource?
  var tableDelegate: PostDelegate?
  
  @IBOutlet weak var tableView: UITableView!
}

extension PostController {
  override func viewDidLoad() {
    super.viewDidLoad()
    fetchPosts()
  }
}

extension PostController {
  func fetchPosts(for query: String? = nil) {
    apiManager.posts() { posts in
      if let posts = posts {
        print(posts.count)
      }
    }
  }
}
