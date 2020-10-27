//
//  Favoritos.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 24/10/20.
//

import Foundation

class Favoritos {
    
    static let instancia = Favoritos()
    
    let chaveFavoritos = "nospresso-favoritos"
    
    let userDefaults = UserDefaults.standard
    
    var listaDeProdutos: [Favorito] = []
    
    /// Tira ou poe um produto na lista
    /// - Parameter produto: produto a ser alternado
    /// - Returns: se o produto esta ou nao favoritado
    func alternar(_ produto: Produto) -> Bool {
        let favorito = Favorito(produto: produto)
        
        defer {
            atualizarArmazenamentoLocal()
        }
        
        if let indiceDoProduto = listaDeProdutos.firstIndex(of: favorito) {
            listaDeProdutos.remove(at: indiceDoProduto)
            return false
        }
        
        listaDeProdutos.append(favorito)
        return true
    }
    
    func remover(produto: Produto) {
        let favorito = Favorito(produto: produto)
        if let indiceDoProduto = listaDeProdutos.firstIndex(of: favorito) {
            listaDeProdutos.remove(at: indiceDoProduto)
            atualizarArmazenamentoLocal()
        }
        
    }
    
    func verificarFavoritismo(do produto: Produto) -> Bool {
        listaDeProdutos.contains(.init(produto: produto))
    }
    
    private init() {
        buscarDoArmazenamentoLocal()
    }
    
}

extension Favoritos {
    private func atualizarArmazenamentoLocal() {
        guard let dadosCodificados = try? JSONEncoder().encode(listaDeProdutos) else { return }
        
        userDefaults.setValue(dadosCodificados, forKey: chaveFavoritos)
    }
    
    private func buscarDoArmazenamentoLocal() {
        guard let dados = userDefaults.data(forKey: chaveFavoritos),
              let favoritosDecodificados = try? JSONDecoder().decode([Favorito].self, from: dados)
              else { return }
        
        listaDeProdutos = favoritosDecodificados
    }
}
