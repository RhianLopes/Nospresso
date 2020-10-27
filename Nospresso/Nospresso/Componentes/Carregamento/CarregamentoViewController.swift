//
//  CarregamentoViewController.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 24/10/20.
//

import UIKit

class CarregamentoViewController: UIViewController {

    class func doNib() -> CarregamentoViewController {
        let vc = CarregamentoViewController(nib: R.nib.carregamentoViewController)
        
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .crossDissolve
        
        return vc
    }
}
