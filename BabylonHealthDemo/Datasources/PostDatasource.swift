//
//  PostDatasource.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit

final class PostDatasource: NSObject, PostTableViewDatasource {
  var post: Post
  var comments: [Comment]
  
  weak var tableView: UITableView?
  weak var delegate: UITableViewDelegate?
		
  required init(post: Post, comments: [Comment], tableView: UITableView, delegate: UITableViewDelegate) {
    self.post = post
    self.comments = comments
    self.tableView = tableView
    self.delegate = delegate
    super.init()
    tableView.register(cellType: PostCell.self)
    tableView.register(cellType: CommentCell.self)
    self.setupTableView()
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      return 1
    } else {
      return comments.count
    }
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.section == 0 {
      let cell = tableView.dequeueReusableCell(for: indexPath, cellType: PostCell.self)
      cell.setup(post: post)
      return cell
    } else {
      let cell = tableView.dequeueReusableCell(for: indexPath, cellType: CommentCell.self)
      let comment = self.comments[indexPath.row]
      cell.setup(comment: comment)
      return cell
    }
  }
}

class PostTableDelegate: NSObject, UITableViewDelegate {
  let delegate: PostDelegate
  
  init(_ delegate: PostDelegate) {
    self.delegate = delegate
  }
  
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    if indexPath.section == 0 {
      return PostCell.estimatedHeight()
    } else {
      return CommentCell.estimatedHeight()
    }
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    delegate.didSelectPost(at: indexPath)
  }
}
