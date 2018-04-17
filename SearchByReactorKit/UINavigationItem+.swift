//
//  UINavigationItem+.swift
//  SearchByReactorKit
//
//  Created by Masakazu Sano on 2018/04/17.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import RxCocoa
import RxSwift

extension Reactive where Base: UINavigationItem {
    public var prompt: Binder<String?> {
        return Binder(base) { navigationItem, string in
            
            print(string)
            
            navigationItem.prompt = string
        }
    }
}
