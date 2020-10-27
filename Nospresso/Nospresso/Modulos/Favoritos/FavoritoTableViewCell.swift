//
//  FavoritoTableViewCell.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 24/10/20.
//

import UIKit

class FavoritoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var tipoLabel: UILabel!
    @IBOutlet weak var precoLabel: UILabel!
    
    func configurar(com produto: Produto) {
        fotoImageView.carregarImagem(usando: produto.imagem)
        nomeLabel.text = produto.nome
        tipoLabel.text = produto.tipo.rawValue.uppercased()
        precoLabel.text = produto.preco.comoDinheiro
    }
    
}
