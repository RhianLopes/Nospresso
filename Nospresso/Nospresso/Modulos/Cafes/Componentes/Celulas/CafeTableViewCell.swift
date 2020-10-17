//
//  CafeTableViewCell.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 15/10/20.
//

import UIKit

class CafeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cafeImageView: UIImageView!
    
    func configurar(com cafe: Cafe) {
        cafeImageView.carregarImagem(usando: cafe.imagem)
    }
    
}