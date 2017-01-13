//
//  PostsDatasource.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 12/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit

final class PostsDatasource: NSObject, PostCollectionDatasource {
  var posts:[Post] = []
  
  weak var collectionView: UICollectionView?
  weak var delegate: UICollectionViewDelegate?
  
  required init(posts: [Post], collectionView: UICollectionView, delegate: UICollectionViewDelegate) {
    self.posts = posts
    self.collectionView = collectionView
    self.delegate = delegate
    super.init()
    collectionView.register(cellType: PostCollectionCell.self)
    self.setupCollectionView()
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return self.posts.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(for: indexPath, cellType: PostCollectionCell.self)
    let post = self.posts[indexPath.row]
    cell.setup(post: post)
    return cell
  }
}

class PostCollectionDelegate: NSObject, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  let delegate: PostsDelegate
  
  init(_ delegate: PostsDelegate) {
    self.delegate = delegate
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    delegate.didSelectPost(at: indexPath)
  }
  
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = collectionView.bounds.size.width
    return PostCollectionCell.size(for: width)
  }
}

