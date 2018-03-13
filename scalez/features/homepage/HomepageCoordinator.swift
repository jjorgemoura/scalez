//
//  HomepageCoordinator.swift
//  scalez
//
//  Created by Jorge Moura on 13/03/2018.
//  Copyright © 2018 Jorge Moura. All rights reserved.
//

import RxSwift
import UIKit

class HomepageCoordinator: Coordinator, Rootable {

    typealias T = HomepageCoordinatorResult

    let window: UIWindow
    let bag: DisposeBag = DisposeBag()

    init(window: UIWindow) {
        self.window = window
    }

    func start() -> Observable<T> {
        let viewModel = HomepageDefaultViewModel()
        let viewController = HomepageViewController()
        viewController.viewModel = viewModel

        let whenTapSettings = viewModel.didTapSettings.map { _ -> HomepageCoordinatorResult in
            HomepageCoordinatorResult.setting
        }

        let whenTapChangeScale = viewModel.didChangeScale.map { _ -> HomepageCoordinatorResult in
            HomepageCoordinatorResult.changeScale
        }

        window.rootViewController = viewController

        return Observable.merge(whenTapSettings, whenTapChangeScale)
            .take(1)
            .do(onNext: { [weak self] event in
                print("Event -> \(event) || Self -> \(self!)")
//                self?.window.rootViewController = nil
            })
    }
}
