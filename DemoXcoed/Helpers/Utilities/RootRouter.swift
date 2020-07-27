//
//  RootRouter.swift
//  DemoXcoed
//
//  Copyright © Igor. All rights reserved.
//

import LocalPackage
import LocalPackage2
import NavigationStack
import ObjectMapper
import SnapKit
import UIKit

class RootRouter {

    /** Replaces root view controller. You can specify the replacment animation type.
     If no animation type is specified, there is no animation */
    func setRootViewController(controller: UIViewController, animatedWithOptions: UIView.AnimationOptions?) {
        guard let window = UIApplication.shared.keyWindow else {
            fatalError("No window in app")
        }
        if let animationOptions = animatedWithOptions, window.rootViewController != nil {
            window.rootViewController = controller
            UIView.transition(with: window, duration: 0.33, options: animationOptions, animations: {
            }, completion: nil)
        } else {
            window.rootViewController = controller
        }
    }

    func loadMainAppStructure() {
        // Customize your app structure here
        let controller = UIViewController()
        let inner = UILabel()
        inner.backgroundColor = .green
        controller.view.addSubview(inner)
        inner.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.center.equalTo(controller.view)
        }
        inner.text = LocalStruct.text
        print(LocalStruct2.text)

        controller.view.backgroundColor = UIColor.red
        setRootViewController(controller: controller, animatedWithOptions: nil)
    }
}
