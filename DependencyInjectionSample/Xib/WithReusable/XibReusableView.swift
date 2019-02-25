//
//  XibReusableView.swift
//  DependencyInjectionSample
//
//  Created by Breno Rage Aboud on 25/02/19.
//  Copyright © 2019 Breno Rage Aboud. All rights reserved.
//

import UIKit
import Reusable

class XibReusableView: UIView, NibOwnerLoadable {

    @IBOutlet weak var resultLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNibContent()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func fillResultLabel(with string: String) {
        resultLabel.text = string
    }
}
