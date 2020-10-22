//
//  MenuProdutosViewController.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 17/10/20.
//

import UIKit

class MenuProdutosViewController: UIViewController {
    
    @IBOutlet private weak var maquinasView: UIView!
    
    @objc
    private func tocarEmMaquinas(_ remetente: Any) {
//        let vc = MaquinasViewController(nibName: "MaquinasViewController", bundle: .main)
        let vc = MaquinasViewController(nib: R.nib.maquinasViewController)
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        removerTextoDoBotaoVoltar()
        
        //outra forma de adicionar UITapGestureReconizer além pelo storyboard ou xbi
        let reconhecedor = UITapGestureRecognizer(target: self, action: #selector(self.tocarEmMaquinas))
        maquinasView.addGestureRecognizer(reconhecedor)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
}
