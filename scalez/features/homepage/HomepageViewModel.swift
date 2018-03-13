//
//  HomepageViewModel.swift
//  scalez
//
//  Created by Jorge Moura on 13/03/2018.
//  Copyright © 2018 Jorge Moura. All rights reserved.
//

import RxSwift

protocol HomepageViewModel {

    var didTapSettings: Observable<Void> { get set }
    var didChangeScale: Observable<Void> { get set }

    var tapSettings: AnyObserver<Void> { get set }
    var changeScale: AnyObserver<Void> { get set }
}
