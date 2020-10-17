//
//  Cafe.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 13/10/20.
//

import Foundation

public struct Cafe: Decodable {
    
    let id: Int
    let nome: String
    let descricao: String
    let intensidade: Int?
    let precoUnitario: Double
    let imagem: String
    let medidas: [MedidaCafe]
    let origem: String?
    let torrefacao: String?
    let perfilAromatico: String?
    
    enum MedidaCafe: String, Decodable {
        case ristretto, lungo, espresso
    }
}
