//
//  ZIdentitifier.swift
//  sapataz
//
//  Created by Jorge Moura on 15/05/2017.
//
//

import Foundation

///Identifier is just a wrapper for the UUID class.
public class Identifier {

    public init() {}

    /**
     Ask for a new uuid.
     returns: UUID as String.
     */
    public func generate() -> String {
        return UUID().uuidString
    }
}
