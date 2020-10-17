//
//  UIViewController+Barbadas.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 17/10/20.
//

import UIKit

extension UIViewController {
     
    func removerTextoDoBotaoVoltar() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
}
