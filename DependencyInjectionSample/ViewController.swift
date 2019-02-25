//
//  ViewController.swift
//  DependencyInjectionSample
//
//  Created by Breno Rage Aboud on 24/02/19.
//  Copyright © 2019 Breno Rage Aboud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let randomizer = Randomizer()
    
    @IBAction func openStoryboard(_ sender: Any) {
        let storyboard = UIStoryboard(name: "StoryboardViewController", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "StoryboardViewController") as? StoryboardViewController else { return }
        vc.randomizer = randomizer
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func openViewCode(_ sender: Any) {
        let vc = ViewCodeController(randomizer)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func openXib(_ sender: Any) {
        let vc = XibViewController(nibName: "XibViewController", bundle: nil, randomizer: randomizer)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func openReusableXib(_ sender: Any) {
        let vc = XibReusableViewController(randomizer)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

