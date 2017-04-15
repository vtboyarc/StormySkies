//
//  Coordinate.swift
//  StormySkies
//
//  Created by Adam Carter on 4/14/17.
//  Copyright © 2017 Adam Carter. All rights reserved.
//

import Foundation

struct Coordinate {
    let latitude: Double
    let longitude: Double
}

extension Coordinate: CustomStringConvertible {
    var description: String {
        return "\(latitude),\(longitude)"
    }
}
