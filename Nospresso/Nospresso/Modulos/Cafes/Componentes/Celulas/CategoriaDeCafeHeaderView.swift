//
//  CategoriaDeCafeHeaderView.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 17/10/20.
//

import UIKit

class CategoriaDeCafeHeaderView: UIView {

    @IBOutlet weak var tituloLabel: UILabel!
    
    func configurar(para categoria: CategoriaCafe) {
        tituloLabel.text = categoria.categoria
    }
}
