//
//  Optional.swift
//  
//
//  Created by Ludvig Hemma on 2021-07-23.
//

import Foundation

public extension Optional where Wrapped == String {
    var isNeitherNilNorEmpty: Bool {
        return (self?.count ?? 0 > 0)
    }
}
