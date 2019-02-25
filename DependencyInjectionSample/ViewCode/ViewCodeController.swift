//
//  ViewCodeController.swift
//  DependencyInjectionSample
//
//  Created by Breno Rage Aboud on 24/02/19.
//  Copyright © 2019 Breno Rage Aboud. All rights reserved.
//

import UIKit

class ViewCodeController: UIViewController {
    
    private let codedView = ViewCode()
    private let randomizer: Randomizer
    
    init(_ randomizer: Randomizer) {
        self.randomizer = randomizer
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = codedView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        codedView.resultLabel.text = randomizer.get()
    }
}
