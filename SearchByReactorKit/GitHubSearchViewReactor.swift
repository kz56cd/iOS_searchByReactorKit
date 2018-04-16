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
        case updateQuery(String?)
        case loadNextPage
    }
    
    enum Mutation {
        case setQuery(String?)
        case setRepos([String], nextPage: Int?)
        case appendRepos([String], nextPage: Int?)
        case setLoadingNextPage(Bool)
    }
    
    struct State {
        var query: String?
        var repos: [String] = []
        var nextPage: Int?
        var isLoadingNextPage: Bool = false
    }
    
    let initialState = State()
    
    func mutate(action: GitHubSearchViewReactor.Action) -> Observable<GitHubSearchViewReactor.Mutation> {
        
        // wip
        
        switch action {
        case let .updateQuery(query):
            break
        case .loadNextPage:
            break
        }
        return Observable.empty()
    }
    
    func reduce(state: GitHubSearchViewReactor.State, mutation: GitHubSearchViewReactor.Mutation) -> GitHubSearchViewReactor.State {
        switch mutation {
        case let .setQuery(query):
            var newState = state
            newState.query = query
            return newState
        case let .setRepos(repos, nextPage):
            var newState = state
            newState.repos = repos
            newState.nextPage = nextPage
            return newState
        case let .appendRepos(repos, nextPage):
            var newState = state
            newState.repos.append(contentsOf: repos)
            newState.nextPage = nextPage
            return newState
        case let .setLoadingNextPage(isLoadingNextPage):
            var newState = state
            newState.isLoadingNextPage = isLoadingNextPage
            return newState
        }
    }
}
