//
//  Endpoint.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 13/10/20.
//

import Foundation

enum Endpoint {
    
    case maquinas
    case acessorios
    case capsulas
    case cafe(id: Int)
    
    var url: String {
        switch self {
        case .cafe(let id):
            return "cafes/\(id)"
        default:
            return "\(self)"
        }
    }
}
