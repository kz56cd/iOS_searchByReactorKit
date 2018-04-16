//
//  GitHubSearchViewReactor.swift
//  SearchByReactorKit
//
//  Created by Masakazu Sano on 2018/04/16.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import ReactorKit
import RxCocoa
import RxSwift

final class GitHubSearchViewReactor: Reactor {
    enum Action {
        // stub
    }
    
    enum Mutation {
        // stub
    }
    
    struct State {
        var query: String?
        // wip
    }
    
    let initialState = State()
    
    func mutate(action: GitHubSearchViewReactor.Action) -> Observable<GitHubSearchViewReactor.Mutation> {
        
        // WIP
        
        return Observable.empty()
    }
    
//    func reduce(state: GitHubSearchViewReactor.State, mutation: GitHubSearchViewReactor.Mutation) -> GitHubSearchViewReactor.State {
//    }
}
