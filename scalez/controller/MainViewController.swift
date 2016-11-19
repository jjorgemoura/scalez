//
//  MainViewController.swift
//  scalez
//
//  Created by Jorge Moura on 30/10/2016.
//  Copyright © 2016 Jorge Moura. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    fileprivate let maxHeaderHeight: CGFloat = 200;
    fileprivate let minHeaderHeight: CGFloat = 34;
    fileprivate var previousScrollOffset: CGFloat = 0;

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var chordsCollectionView: UICollectionView!
    @IBOutlet weak var headerViewHeightConstraint: NSLayoutConstraint!
    


    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.backgroundColor = UIColor.yellow

        chordsCollectionView.delegate = self
        chordsCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        headerViewHeightConstraint.constant = maxHeaderHeight
//        updateHeader()
    }






    //Private methods
    fileprivate func scrollViewDidStopScrolling() {
        let range = maxHeaderHeight - minHeaderHeight
        let midPoint = minHeaderHeight + (range / 2)

        if headerViewHeightConstraint.constant > midPoint {
            expandHeader()
        } else {
            collapseHeader()
        }
    }

    fileprivate func collapseHeader() {
        view.layoutIfNeeded()
        UIView.animate(withDuration: 2.2, animations: {
            self.headerViewHeightConstraint.constant = self.minHeaderHeight
            self.updateHeader()
            self.view.layoutIfNeeded()
        })
    }

    fileprivate func expandHeader() {
        view.layoutIfNeeded()
        UIView.animate(withDuration: 2.2, animations: {
            self.headerViewHeightConstraint.constant = self.maxHeaderHeight
            self.updateHeader()
            self.view.layoutIfNeeded()
        })
    }

    fileprivate func setScrollPosition(position: CGFloat) {
//        self.tableView.contentOffset = CGPointMake(self.tableView.contentOffset.x, position)
        chordsCollectionView.contentOffset = CGPoint.init(x: chordsCollectionView.contentOffset.x, y: position)
    }

    fileprivate func updateHeader() {
        let range = maxHeaderHeight - minHeaderHeight
        let openAmount = headerViewHeightConstraint.constant - minHeaderHeight
        let percentage = openAmount / range
        print(percentage)
//        titleTopConstraint.constant = -openAmount + 10
//        logoImageView.alpha = percentage
    }

}



extension MainViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 8
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "xpto", for: indexPath)

        let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        lbl.text = "jorge"

        cell.contentView.addSubview(lbl)
        cell.backgroundColor = UIColor.orange
        return cell
    }

}

extension MainViewController: UICollectionViewDelegate {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("JM: DID SCROLL #1 || Scroll ContentOffset x,y = \(scrollView.contentOffset.x),\(scrollView.contentOffset.y) || PreviousScrollOffset = \(previousScrollOffset)")

        let scrollDiff = scrollView.contentOffset.y - previousScrollOffset

        let absoluteTop: CGFloat = 0
        let absoluteBottom: CGFloat = scrollView.contentSize.height - scrollView.frame.size.height

        let isScrollingDown = scrollDiff > 0 && scrollView.contentOffset.y > absoluteTop
        let isScrollingUp = scrollDiff < 0 && scrollView.contentOffset.y < absoluteBottom

        print("JM: DID SCROLL #2 || scrollDiff=\(scrollDiff) || AbsBottom = \(absoluteBottom) || isScrollingDown = \(isScrollingDown) || isScrollingUp = \(isScrollingUp)")

        // Calculate new header height
        var newHeight = headerViewHeightConstraint.constant
        if isScrollingDown {
            newHeight = max(minHeaderHeight, headerViewHeightConstraint.constant - abs(scrollDiff))
        } else if isScrollingUp {
            newHeight = min(maxHeaderHeight, headerViewHeightConstraint.constant + abs(scrollDiff))
        }

        print("JM: DID SCROLL #3 || newHeight=\(newHeight)")

        // Header needs to animate
        if newHeight != headerViewHeightConstraint!.constant {
            print("JM: DID SCROLL #4 || newHeight=\(newHeight) -> LETS ANIMATE")
            headerViewHeightConstraint.constant = newHeight
            updateHeader()
            setScrollPosition(position: previousScrollOffset)
        }

        previousScrollOffset = scrollView.contentOffset.y
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("JM: DID END DECELERATING #1")
        scrollViewDidStopScrolling()
    }

    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("JM: DID END DRAGGING #1 -> decelerate = \(decelerate)")
        if !decelerate {
            print("JM: DID END DRAGGING #2")
            scrollViewDidStopScrolling()
        }
    }
}
