//
//  Array.swift
//  
//
//  Created by Ludvig Hemma on 2021-07-29.
//

import Foundation

public extension Array where Element == String? {
    var isNeitherNilNorEmpty: Bool {
        return self.allSatisfy { $0.isNeitherNilNorEmpty }
    }
}
