//
//  DarkSkyError.swift
//  StormySkies
//
//  Created by Adam Carter on 4/14/17.
//  Copyright © 2017 Adam Carter. All rights reserved.
//

import Foundation

enum DarkSkyError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case invalidUrl
    case jsonParsingFailure
}
