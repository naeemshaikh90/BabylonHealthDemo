//
//  CommentDatasource.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 13/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit

final class CommentDatasource: NSObject, CommentTableViewDatasource {
  var comments: [Comment]
  
  weak var tableView: UITableView?
  weak var delegate: UITableViewDelegate?
		
  required init(comments: [Comment], tableView: UITableView, delegate: UITableViewDelegate) {
    self.comments = comments
    self.tableView = tableView
    self.delegate = delegate
    super.init()
    tableView.register(cellType: CommentCell.self)
    self.setupTableView()
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.comments.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(for: indexPath, cellType: CommentCell.self)
    let comment = self.comments[indexPath.row]
    cell.setup(comment: comment)
    return cell
  }
}

class CommentTableDelegate: NSObject, UITableViewDelegate {
  let delegate: CommentDelegate
  
  init(_ delegate: CommentDelegate) {
    self.delegate = delegate
  }
  
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    return CommentCell.estimatedHeight()
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    delegate.didSelectComment(at: indexPath)
  }
}

