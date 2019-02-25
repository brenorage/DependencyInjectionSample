//
//  XibReusableViewController.swift
//  DependencyInjectionSample
//
//  Created by Breno Rage Aboud on 24/02/19.
//  Copyright © 2019 Breno Rage Aboud. All rights reserved.
//

import UIKit
import Reusable

class XibReusableViewController: UIViewController, NibOwnerLoadable {

    private let reusableView = XibReusableView(frame: .zero)
    
    private let randomizer: Randomizer
    
    init(_ randomizer: Randomizer) {
        self.randomizer = randomizer
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = reusableView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reusableView.fillResultLabel(with: randomizer.get())
    }
}
