//
//  Maquina.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 13/10/20.
//

import Foundation

public struct Maquina: Produto {
    
    let id: Int
    let nome: String
    let preco: Double
    let imagem: String
    let descricao: String
    var tipo: TipoProduto { .maquina }
    
}
