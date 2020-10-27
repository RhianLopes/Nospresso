//
//  MaquinasProtocolos.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 22/10/20.
//

import Foundation

protocol MaquinasViewType: CarregamentoViewType {
    func recarregarColecao()
}

protocol MaquinasPresenterType {
    var maquinas: [Maquina] { get }
    func telaCarregou()
}
