//
//  ItemsTableViewDatasource.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit

protocol PostTableViewDatasource: UITableViewDataSource {
  associatedtype P
  associatedtype C
  
  var post:P { get }
  var comments:[C] { get }
  
  weak var tableView: UITableView? { get }
  weak var delegate: UITableViewDelegate? { get }
  
  init(post: P, comments: [C], tableView: UITableView, delegate: UITableViewDelegate)
  
  func setupTableView()
}

extension PostTableViewDatasource {
  func setupTableView() {
    self.tableView?.dataSource = self
    self.tableView?.delegate = self.delegate
    self.tableView?.reloadData()
  }
}
