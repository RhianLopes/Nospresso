//
//  AcessorioTableViewCell.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 28/10/20.
//

import UIKit

class AcessorioTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var imagemAcessorioImageView: UIImageView!
    @IBOutlet weak var valorLabel: UILabel!
    
    func configurar(com item: Item) {
        self.imagemAcessorioImageView.carregarImagem(usando: item.imagem)
        self.tituloLabel.text = item.nome
        self.valorLabel.text = item.preco.comoDinheiro
    }
}
