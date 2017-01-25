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
  var lastUpdate = Date()
  
  var tableDatasource: PostDatasource?
  var tableDelegate: PostTableDelegate?
  
  @IBOutlet weak var tableView: UITableView!
}

extension PostDetailController {
  override func viewDidLoad() {
    super.viewDidLoad()
    fetchData()
    setupPullToRefresh()
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
    } else {
      print("post is empty, post details can't be fetched!")
    }
  }
}

extension PostDetailController {
  func setupPullToRefresh() {
    // set up the refresh control
    setupDateFormatter()
    updatePullToRefresh()
    self.refreshControl.addTarget(self, action: #selector(refresh(sender:)), for: UIControlEvents.valueChanged)
    self.tableView?.addSubview(refreshControl)
  }
  
  func setupDateFormatter() {
    // set up date format
    self.dateFormatter.dateStyle = .short
    self.dateFormatter.timeStyle = .long
  }
  
  func updatePullToRefresh() {
    // update "last updated" title for refresh control
    if let timeSaved = comments.first?.timeSaved {
      self.lastUpdate = timeSaved
    }
    let updateString = "Last Updated at " + self.dateFormatter.string(from: lastUpdate)
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
        self.dismissPullToRefresh()
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
      
      if !postComments.isEmpty {
        self.setupPostView(with: post, comments: postComments)
      }
    }
  }
}

extension PostDetailController {
  func fetchAuthors() {
    if CommonUtility.isConnected() {
      apiManager.users() { users in
        self.dismissPullToRefresh()
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
    self.updatePullToRefresh()
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
