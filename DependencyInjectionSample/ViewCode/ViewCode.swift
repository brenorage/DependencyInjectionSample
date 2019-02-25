//
//  ViewCode.swift
//  DependencyInjectionSample
//
//  Created by Breno Rage Aboud on 24/02/19.
//  Copyright © 2019 Breno Rage Aboud. All rights reserved.
//

import UIKit

class ViewCode: UIView {

    let resultLabel: UILabel = {
        let label = UILabel(frame: .zero)
        return label
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        addSubview(resultLabel)
        resultLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        resultLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
