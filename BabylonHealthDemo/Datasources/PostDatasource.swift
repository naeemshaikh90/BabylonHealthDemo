//
//  PostDatasource.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit

private enum SectionType {
  case PostCell
  case CommentCell
}

private struct Section {
  var type: SectionType
  var items: Int
}

final class PostDatasource: NSObject, PostTableViewDatasource {
  var post: Post
  var comments: [Comment]
  fileprivate var sections = [Section]()
  
  weak var tableView: UITableView?
  weak var delegate: UITableViewDelegate?
		
  required init(post: Post, comments: [Comment], tableView: UITableView, delegate: UITableViewDelegate) {
    self.post = post
    self.comments = comments
    self.tableView = tableView
    self.delegate = delegate
    super.init()
    sections = [
      Section(type: .PostCell, items: 1),
      Section(type: .CommentCell, items: comments.count)
    ]
    tableView.register(cellType: PostCell.self)
    tableView.register(cellType: CommentCell.self)
    self.setupTableView()
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return sections.count
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return sections[section].items
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch sections[indexPath.section].type {
    case .PostCell:
      return postCellAt(indexPath)
      
    case .CommentCell:
      return commentCellAt(indexPath)
    }
  }
  
  func postCellAt(_ indexPath: IndexPath) -> PostCell {
    let cell = self.tableView!.dequeueReusableCell(for: indexPath, cellType: PostCell.self)
    cell.setup(post: post)
    return cell
  }
  
  func commentCellAt(_ indexPath: IndexPath) -> CommentCell {
    let cell = self.tableView!.dequeueReusableCell(for: indexPath, cellType: CommentCell.self)
    let comment = self.comments[indexPath.row]
    cell.setup(comment: comment)
    return cell
  }
}

class PostTableDelegate: NSObject, UITableViewDelegate {
  let delegate: PostDelegate
  
  init(_ delegate: PostDelegate) {
    self.delegate = delegate
  }
  
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    return PostCell.estimatedHeight()
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //TODO: Improve by removing static value
    if indexPath.section == 0 {
      delegate.didSelectPost(at: indexPath)
    } else {
      delegate.didSelectComment(at: indexPath)
    }
  }
}
