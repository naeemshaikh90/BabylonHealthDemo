//
//  PostCell.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit
import Reusable

final class PostCell: UITableViewCell, NibReusable {
  @IBOutlet weak var postTitle: UILabel!
  @IBOutlet weak var postBody: UILabel!
  
  static func height() -> CGFloat {
    return 67
  }
  
  func setup(item: Post) {
    postTitle.text = item.title
    postBody.text = item.body
  }
  
  /*
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
   */
}
