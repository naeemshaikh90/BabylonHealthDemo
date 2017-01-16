//
//  PostDetailController.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 12/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit
import SVProgressHUD
import RealmSwift

protocol PostDelegate {
  func didSelectPost(at index: IndexPath)
  func didSelectComment(at index: IndexPath)
}

final class PostDetailController: UIViewController {
  var apiManager: BabylonAPICalls = BabylonAPIManger()
  var post: Post?
  var users: [User] = []
  var comments: [Comment] = []
  
  var tableDatasource: PostDatasource?
  var tableDelegate: PostTableDelegate?
  
  @IBOutlet weak var tableView: UITableView!
}

extension PostDetailController {
  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.isHidden = true
    if post != nil {
      fetchSaveAuthors()
      if users.isEmpty {
        fetchAuthors()
      }
      
      fetchSaveComments()
      if comments.isEmpty {
        fetchComments()
      }
    }
  }
}

extension PostDetailController {
  func fetchComments() {
    if let post = post {
      SVProgressHUD.show()
      apiManager.comments() { comments in
        SVProgressHUD.dismiss()
        if let comments = comments {
          var postComments: [Comment] = []
          for comment in comments {
            if comment.postId == post.id {
              postComments.append(comment)
            }
          }
          self.setupPostView(with: post, comments: postComments)
        }
      }
    }
  }
  
  func fetchSaveComments() {
    do {
      let realm = try Realm()
      let offlineComments = realm.objects(Comment.self)
      for offlineComment in offlineComments {
        comments.append(offlineComment)
      }
      
      if let post = post {
        var postComments: [Comment] = []
        for comment in offlineComments {
          if comment.postId == post.id {
            postComments.append(comment)
          }
        }
        self.setupPostView(with: post, comments: postComments)
      }
    } catch let error as NSError {
      print(error.localizedDescription)
    }
  }
  
  func fetchAuthors() {
    if let post = post {
      apiManager.users() { users in
        if let users = users {
          for user in users {
            if user.id == post.userId {
              self.navigationItem.title = user.name
            }
          }
        }
      }
    }
  }
  
  func fetchSaveAuthors() {
    do {
      let realm = try Realm()
      let offlineUsers = realm.objects(User.self)
      for offlineUser in offlineUsers {
        users.append(offlineUser)
      }
      
      if let post = post {
        for user in users {
          if user.id == post.userId {
            self.navigationItem.title = user.name
          }
        }
      }
    } catch let error as NSError {
      print(error.localizedDescription)
    }
  }
}

extension PostDetailController {
  func setupPostView(with post: Post, comments: [Comment]) {
    self.tableView.isHidden = false
    tableDelegate = PostTableDelegate(self)
    tableDatasource = PostDatasource(post: post,
                                     comments: comments,
                                     tableView: self.tableView,
                                     delegate: tableDelegate!)
  }
}

extension PostDetailController: PostDelegate {
  func didSelectPost(at index: IndexPath) {
    
  }
  
  func didSelectComment(at index: IndexPath) {
    
  }
}
