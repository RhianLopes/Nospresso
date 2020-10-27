//
//  Produto.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 24/10/20.
//

import Foundation

protocol Produto: Codable {
    
    var id: Int { get }
    var nome: String { get }
    var preco: Double { get }
    var descricao: String { get }
    var imagem: String { get }
    var tipo: TipoProduto { get }
    
}

enum TipoProduto: String, Codable {
    case maquina, cafe, acessorio
}
