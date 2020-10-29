//
//  AcessoriosPresenter.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 28/10/20.
//

import UIKit

class AcessoriosPresenter: NSObject {
    
    var view: MaquinasViewType
    var itens: [Item] = []
    
    init(view: MaquinasViewType) {
        self.view = view
    }
}
