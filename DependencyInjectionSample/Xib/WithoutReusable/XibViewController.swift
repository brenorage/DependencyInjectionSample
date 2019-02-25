//
//  XibViewController.swift
//  DependencyInjectionSample
//
//  Created by Breno Rage Aboud on 24/02/19.
//  Copyright © 2019 Breno Rage Aboud. All rights reserved.
//

import UIKit

class XibViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    let randomizer: Randomizer
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?, randomizer: Randomizer) {
        self.randomizer = randomizer
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = randomizer.get()
    }
}
