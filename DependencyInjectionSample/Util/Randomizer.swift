//
//  Randomize.swift
//  DependencyInjectionSample
//
//  Created by Breno Rage Aboud on 24/02/19.
//  Copyright © 2019 Breno Rage Aboud. All rights reserved.
//

import Foundation

final class Randomizer {
    private let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    func get() -> String {
        return "\(numbers.randomElement() ?? 0)"
    }
}
