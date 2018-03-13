//
//  AppCoordinator.swift
//  toscoz
//
//  Created by Jorge Moura on 19/07/2017.
//  Copyright © 2017 Jorge Moura. All rights reserved.
//

import RxSwift
import UIKit

/// The AppCoordinator is the startup coordinator, initialised in AppDelegate.
///
/// Being the root coordinator, AppCoordinator type is `Void`.
///
/// ````
/// typealias T = Void
/// ````
class AppCoordinator: Coordinator, Rootable {

    typealias T = Void

    let window: UIWindow
    private var homepageCoordinator: HomepageCoordinator?

    let bag: DisposeBag = DisposeBag()

    /// The initialiser of the class.
    ///
    /// - Parameter window: The `UIWindow` needs to be init in the initialiser..
    init(window: UIWindow) {
        self.window = window
        print("JM - 1 -> \(self)")
    }

    deinit {
        print("JM - D1 -> \(Unmanaged<AnyObject>.passUnretained(self as AnyObject).toOpaque())")
    }

    /// The method that starts the coordinator.
    ///
    /// - Returns: Result of the coordinator, `Void` in this coordinator.
    func start() -> Observable<T> {
        appConfiguration()

        if isFirstLaunch() {
            showOnBoardingScreen()
        } else {
            showHomepageScreen()
        }

        return Observable.never()
    }

    // MARK: - private methods
    private func isFirstLaunch() -> Bool {
        return false
    }

    private func appConfiguration() {
        window.apply(style: Styler(with: AppWindow()))
    }

    private func showHomepageScreen() {
        homepageCoordinator = HomepageCoordinator(window: window)

        homepageCoordinator?.start()
            .subscribe(onNext: { result in

                switch result {
                case HomepageCoordinatorResult.setting:
                    self.showOnBoardingScreen()
                case HomepageCoordinatorResult.changeScale:
                    self.showOnBoardingScreen()
                }
            }, onError: { error in
                print(error.localizedDescription)
            }, onCompleted: {
                self.homepageCoordinator = nil
            }).disposed(by: bag)
    }

    private func showOnBoardingScreen() {

    }
}
