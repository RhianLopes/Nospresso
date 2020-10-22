//
//  MedidaView.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 22/10/20.
//

import UIKit

class MedidaView: UIView {
    
    class func doNib() -> MedidaView {
        R.nib.medidaView.firstView(owner: nil)!
    }
    
    @IBOutlet weak var canequinhaImageView: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    
    func configurar(com medida: Cafe.MedidaCafe) {
        canequinhaImageView.image = medida.imagem
        nomeLabel.text = medida.rawValue
    }
}

extension Cafe.MedidaCafe {
    var imagem: UIImage? {
        switch self {
        case .ristretto:
            return Imagens.group10()
        case .espresso:
            return Imagens.group9()
        case .lungo:
            return Imagens.group8()
        }
    }
}
