//
//  Capsula.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 13/10/20.
//

import Foundation

public struct Capsula: Decodable {
    
    let categoria: String
    let cafes: [Cafe]
    
}
