//
//  StoryboardViewController.swift
//  DependencyInjectionSample
//
//  Created by Breno Rage Aboud on 24/02/19.
//  Copyright © 2019 Breno Rage Aboud. All rights reserved.
//

import UIKit

class StoryboardViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var randomizer: Randomizer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = randomizer?.get()
    }
}
