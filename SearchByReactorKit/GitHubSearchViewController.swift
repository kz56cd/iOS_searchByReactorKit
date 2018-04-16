//
//  GitHubSearchViewController.swift
//  SearchByReactorKit
//
//  Created by Masakazu Sano on 2018/04/16.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit
import ReactorKit
import RxCocoa
import RxSwift
import SafariServices

class GitHubSearchViewController: UIViewController, StoryboardView {
    @IBOutlet weak var tableView: UITableView!
    let searchController = UISearchController(searchResultsController: nil)
    
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func bind(reactor: GitHubSearchViewReactor) {
        // wip
    }
}
