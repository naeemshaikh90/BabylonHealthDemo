//
//  PostDatasource.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit

final class PostDatasource: NSObject, ItemsTableViewDatasource {
  var items: [Post] = []
  weak var tableView: UITableView?
  weak var delegate: UITableViewDelegate?
		
  required init(items: [Post], tableView: UITableView, delegate: UITableViewDelegate) {
    self.items = items
    self.tableView = tableView
    self.delegate = delegate
    super.init()
    tableView.register(cellType: PostCell.self)
    self.setupTableView()
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(for: indexPath, cellType: PostCell.self)
    let post = self.items[indexPath.row]
    cell.setup(item: post)
    return cell
  }
}

class PostTableDelegate: NSObject, UITableViewDelegate {
  let delegate: PostDelegate
  
  init(_ delegate: PostDelegate) {
    self.delegate = delegate
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return PostCell.height()
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    delegate.didSelectPost(at: indexPath)
  }
}
