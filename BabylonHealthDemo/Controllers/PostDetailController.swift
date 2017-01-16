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
  
  var refreshControl = UIRefreshControl()
  var dateFormatter = DateFormatter()
  
  var tableDatasource: PostDatasource?
  var tableDelegate: PostTableDelegate?
  
  @IBOutlet weak var tableView: UITableView!
}

extension PostDetailController {
  override func viewDidLoad() {
    super.viewDidLoad()
    fetchData()
  }
  
  func fetchData() {
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
  func setupPullToRefresh() {
    // set up the refresh control
    setupDateFormatter()
    self.refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
    self.refreshControl.addTarget(self, action: #selector(refresh(sender:)), for: UIControlEvents.valueChanged)
    self.tableView?.addSubview(refreshControl)
  }
  
  func setupDateFormatter() {
    // set up date format
    self.dateFormatter.dateStyle = DateFormatter.Style.short
    self.dateFormatter.timeStyle = DateFormatter.Style.long
  }
  
  func updatePullToRefresh() {
    // update "last updated" title for refresh control
    let now = Date()
    let updateString = "Last Updated at " + self.dateFormatter.string(from: now)
    self.refreshControl.attributedTitle = NSAttributedString(string: updateString)
  }
  
  func dismissPullToRefresh() {
    // tell refresh control it can stop showing up now
    if self.refreshControl.isRefreshing {
      self.refreshControl.endRefreshing()
    }
  }
  
  func refresh(sender: AnyObject) {
    fetchAuthors()
    fetchComments()
  }
}

extension PostDetailController {
  func fetchComments() {
    if CommonUtility.isConnected() {
      SVProgressHUD.show()
      apiManager.comments() { comments in
        SVProgressHUD.dismiss()
        if let comments = comments {
          self.comments = comments
          self.fetchPostWiseComments()
        }
      }
    } else {
      CommonUtility.showNotConnected()
    }
  }
  
  func fetchSaveComments() {
    do {
      let realm = try Realm()
      let offlineComments = realm.objects(Comment.self)
      for offlineComment in offlineComments {
        comments.append(offlineComment)
      }
      fetchPostWiseComments()
    } catch let error as NSError {
      CommonUtility.showError(error)
    }
  }
  
  func fetchPostWiseComments() {
    if let post = post {
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

extension PostDetailController {
  func fetchAuthors() {
    if CommonUtility.isConnected() {
      apiManager.users() { users in
        if let users = users {
          self.users = users
          self.fetchPostAuthor()
        }
      }
    } else {
      CommonUtility.showNotConnected()
    }
  }
  
  func fetchSaveAuthors() {
    do {
      let realm = try Realm()
      let offlineUsers = realm.objects(User.self)
      for offlineUser in offlineUsers {
        users.append(offlineUser)
      }
      fetchPostAuthor()
    } catch let error as NSError {
      CommonUtility.showError(error)
    }
  }
  
  func fetchPostAuthor() {
    if let post = post {
      for user in users {
        if user.id == post.userId {
          self.navigationItem.title = user.name
        }
      }
    }
  }
}

extension PostDetailController {
  func setupPostView(with post: Post, comments: [Comment]) {
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
