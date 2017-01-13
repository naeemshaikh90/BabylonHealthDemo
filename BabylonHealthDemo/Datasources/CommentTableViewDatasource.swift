//
//  CommentTableViewDatasource.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 13/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit

protocol CommentTableViewDatasource: UITableViewDataSource {
  associatedtype T
  var comments:[T] {get}
  weak var tableView: UITableView? {get}
  weak var delegate: UITableViewDelegate? {get}
  
  init(comments: [T], tableView: UITableView, delegate: UITableViewDelegate)
  
  func setupTableView()
}

extension CommentTableViewDatasource {
  func setupTableView() {
    self.tableView?.dataSource = self
    self.tableView?.delegate = self.delegate
    self.tableView?.reloadData()
  }
}
