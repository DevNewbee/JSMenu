//
//  MVPopoverDelegate.swift
//  JSPopoverMenu
//
//  Created by 王俊硕 on 2017/11/5.
//  Copyright © 2017年 王俊硕. All rights reserved.
//

import UIKit

extension MainViewController: JSPopoverMenuViewDelegate {
    var baseView: UIView { return self.view }

    func popoverMenu(_ popoverMenu: JSPopoverMenuView, didSelectedAt indexPath: IndexPath) {
        print("Don't mess up with me: \(indexPath)")
    }
    func popoverMenu(_ popoverMenu: JSPopoverMenuView, updatedData data: [JSTag]) {
        displayerLabel.text = reduceArray(data.map(){ $0.title} )
    }
    func popoverMenu(_ popoverMenu: JSPopoverMenuView, newTag value: JSTag) {
        print(value)
    }
}
