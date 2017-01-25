/**
 * Copyright © 2017-present Naeem Shaikh
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
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
