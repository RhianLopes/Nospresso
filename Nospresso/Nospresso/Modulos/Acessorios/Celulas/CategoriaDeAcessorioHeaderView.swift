//
//  CategoriaDeAcessorioHeaderView.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 28/10/20.
//

import UIKit

class CategoriaDeAcessorioHeaderView: UIView {

    @IBOutlet weak var tituloLabel: UILabel!
    
    func configurar(com acessorio: Acessorio) {
        self.tituloLabel.text = acessorio.categoria
    }
    
}
