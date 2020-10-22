//
//  ContadorIntensidadeStackView.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 20/10/20.
//

import UIKit

class ContadorIntensidadeStackView: UIStackView {
    
    let tamanhoBolinha: CGFloat = 7
    let intensidadeMaxima = 13
    
    func gerarBolinha(preenchida: Bool) -> UIView {
        let bolinha = UIView()
        
        NSLayoutConstraint.activate([
            bolinha.heightAnchor.constraint(equalToConstant: tamanhoBolinha),
            bolinha.widthAnchor.constraint(equalToConstant: tamanhoBolinha)
        ])
        
        bolinha.layer.cornerRadius = tamanhoBolinha / 2
        bolinha.layer.borderWidth = 0.4
        
    
        bolinha.layer.borderColor = UIColor.black.cgColor
        bolinha.backgroundColor = preenchida ? Paleta.intensidadePreenchida() : .systemGray
        
        return bolinha
    }
    
    func configurar(para intensidade: Int) {
        let quantidadeDeBolinhasVazias = intensidadeMaxima - intensidade
        
        for _ in 0..<intensidade {
            let bolinha = gerarBolinha(preenchida: true)
            addArrangedSubview(bolinha)
        }
        
        for _ in 0..<quantidadeDeBolinhasVazias {
            let bolinha = gerarBolinha(preenchida: false)
            addArrangedSubview(bolinha)
        }
        addArrangedSubview(UIView())
    }
    
}
