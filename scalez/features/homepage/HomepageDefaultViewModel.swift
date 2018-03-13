//
//  HomepageDefaultViewModel.swift
//  scalez
//
//  Created by Jorge Moura on 13/03/2018.
//  Copyright © 2018 Jorge Moura. All rights reserved.
//

import RxSwift

class HomepageDefaultViewModel: HomepageViewModel {

    private var bag: DisposeBag = DisposeBag()

    // ViewModel Delegate / Observables to others (coordinators) to observe
    var didTapSettings: Observable<Void>
    var didChangeScale: Observable<Void>

    // ViewModel actions to be triggered / called from the View/ViewController
    var tapSettings: AnyObserver<Void>
    var changeScale: AnyObserver<Void>

    deinit {
        print("JM - D3 -> \(Unmanaged<AnyObject>.passUnretained(self as AnyObject).toOpaque())")
    }

    init() {
        let settings = PublishSubject<Void>()
        tapSettings = settings.asObserver()
        didTapSettings = settings.asObservable()

        let scales = PublishSubject<Void>()
        changeScale = scales.asObserver()
        didChangeScale = scales.asObservable()
    }
}
