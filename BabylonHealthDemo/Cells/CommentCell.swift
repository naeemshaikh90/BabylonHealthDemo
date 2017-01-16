//
//  CommentCell.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 13/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit
import Reusable

final class CommentCell: UITableViewCell, NibReusable {
  @IBOutlet weak var commentTitle: UILabel!
  @IBOutlet weak var commentEmail: UILabel!
  @IBOutlet weak var commentBody: UILabel!
  
  static func estimatedHeight() -> CGFloat {
    return 102
  }
  
  func setup(comment: Comment) {
    commentTitle.text = comment.name
    commentEmail.text = comment.email
    commentBody.text = comment.body
  }
}
