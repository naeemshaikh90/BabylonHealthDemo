//
//  PostController.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import UIKit
import SVProgressHUD
import RealmSwift

protocol PostsDelegate {
  func didSelectPost(at index: IndexPath)
}

final class PostController: UIViewController {
  var apiManager: BabylonAPICalls = BabylonAPIManger()
  var posts: [Post] = []
  
  var collectionDatasource: PostsDatasource?
  var collectionDelegate:   PostCollectionDelegate?
  
  @IBOutlet weak var collectionView: UICollectionView!
}

extension PostController {
  override func viewDidLoad() {
    super.viewDidLoad()
    fetchSavePosts()
    if posts.isEmpty {
      fetchPosts()
    }
  }
}

extension PostController {
  func fetchPosts() {
    collectionView.isHidden = true
    SVProgressHUD.show()
    apiManager.posts() { posts in
      SVProgressHUD.dismiss()
      if let posts = posts {
        self.setupCollectionView(with: posts)
      }
    }
  }
  
  func fetchSavePosts() {
    do {
      let realm = try Realm()
      let offlinePosts = realm.objects(Post.self)
      for offlinePost in offlinePosts {
        posts.append(offlinePost)
      }
      self.setupCollectionView(with: posts)
    } catch let error as NSError {
      print(error.localizedDescription)
    }
  }
}

extension PostController {
  func setupCollectionView(with posts: [Post]) {
    self.posts = posts
    self.collectionView.isHidden = false
    collectionDelegate = PostCollectionDelegate(self)
    collectionDatasource = PostsDatasource(posts: posts,
                                           collectionView: self.collectionView,
                                           delegate: collectionDelegate!)
  }
}

extension PostController: PostsDelegate {
  func didSelectPost(at index: IndexPath) {
    guard let nextController = Storyboard.Main
      .postDetailControllerScene
      .viewController() as? PostDetailController else {
        return
    }
    
    let post = posts[index.row]
    nextController.post = post
    self.navigationController?.pushViewController(nextController,
                                                  animated: true)
  }
}
