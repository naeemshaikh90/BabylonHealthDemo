//
//  PostCollectionDatasource.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 12/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit

protocol PostCollectionDatasource: UICollectionViewDataSource {
  associatedtype T
  var posts:[T] { get }
  weak var collectionView: UICollectionView? { get }
  weak var delegate: UICollectionViewDelegate? { get }
  
  init(posts: [T], collectionView: UICollectionView, delegate: UICollectionViewDelegate)
  
  func setupCollectionView()
}

extension PostCollectionDatasource {
  func setupCollectionView() {
    self.collectionView?.dataSource = self
    self.collectionView?.delegate = self.delegate
    self.collectionView?.reloadData()
  }
}


