//
//  PostCollectionCell.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 12/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit
import Reusable

class PostCollectionCell: UICollectionViewCell, NibReusable {
  @IBOutlet weak var postTitle: UILabel!
  @IBOutlet weak var postImage: UIImageView!
  
  static func size(for parentWidth: CGFloat) -> CGSize {
    let width = parentWidth
    let height = CGFloat(155)
    return CGSize(width: width, height: height)
  }
  
  func setup(post: Post) {
    postTitle.text = post.title
  }
}
