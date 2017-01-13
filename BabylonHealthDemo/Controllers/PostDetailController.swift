//
//  PostDetailController.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 12/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit
import SVProgressHUD

protocol PostDelegate {
  func didSelectPost(at index: IndexPath)
}

protocol CommentDelegate {
  func didSelectComment(at index: IndexPath)
}

final class PostDetailController: UIViewController {
  var apiManager: BabylonAPICalls = BabylonAPIManger()
  var post: Post?
  var user: User?
  var comments: [Comment] = []
  
  var tableDatasource: PostDatasource?
  var tableDelegate: PostTableDelegate?
  
  var commentTableDatasource: CommentDatasource?
  var commentTableDelegate: CommentTableDelegate?
  
  @IBOutlet weak var tableView: UITableView!
}

extension PostDetailController {
  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.isHidden = true
    if let post = post {
      self.tableView.isHidden = false
      setupPostView(with: post)
      fetchAuthor()
      fetchComments()
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
          self.setupCommentView(with: postComments)
        }
      }
    }
  }
  
  func fetchAuthor() {
    SVProgressHUD.show()
    if let post = post {
      apiManager.user(userId: post.userId) { user in
        SVProgressHUD.dismiss()
        if let user = user {
          self.navigationItem.title = user.name
        }
      }
    }
  }
}

extension PostDetailController {
  func setupPostView(with post: Post) {
    tableDelegate = PostTableDelegate(self)
    tableDatasource = PostDatasource(post: post,
                                     tableView: self.tableView,
                                     delegate: tableDelegate!)
  }
  
  func setupCommentView(with comments: [Comment]) {
    commentTableDelegate = CommentTableDelegate(self)
    commentTableDatasource = CommentDatasource(comments: comments,
                                               tableView: self.tableView,
                                               delegate: commentTableDelegate!)
  }
}

extension PostDetailController: PostDelegate {
  func didSelectPost(at index: IndexPath) {
    
  }
}

extension PostDetailController: CommentDelegate {
  func didSelectComment(at index: IndexPath) {
    
  }
}
