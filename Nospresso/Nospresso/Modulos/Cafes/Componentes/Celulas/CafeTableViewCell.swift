//
//  CafeTableViewCell.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 15/10/20.
//

import UIKit

class CafeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cafeImageView: UIImageView!
    
    @IBOutlet weak var titulo: UILabel!
    
    @IBOutlet weak var subtitulo: UILabel!
    
    @IBOutlet weak var intensidade: UILabel!
    
    @IBOutlet weak var preco: UILabel!
    
    func configurar(com cafe: Cafe) {
        self.cafeImageView.carregarImagem(usando: cafe.imagem)
        self.titulo.text = cafe.nome
        self.subtitulo.text = cafe.descricao
        self.preco.text = cafe.precoUnitario.comoDinheiro
        if let intensidade = cafe.intensidade {
            self.intensidade.text = "Intensidade \(intensidade)"
        }
    }
    
}
