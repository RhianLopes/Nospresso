//
//  MaquinasViewController.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 22/10/20.
//

import UIKit

class MaquinasViewController: UIViewController {
    
    typealias Presenter = MaquinasPresenterType & UICollectionViewDataSource

    @IBOutlet weak var collectionView: UICollectionView!
    
    lazy var presenter: Presenter = MaquinasPresenter(view: self)
    
    var telaDeCarregamento: CarregamentoViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self.presenter
        collectionView.register(R.nib.maquinaCollectionViewCell)
        presenter.telaCarregou()
    }

}

extension MaquinasViewController: MaquinasViewType {
    func recarregarColecao() {
        collectionView.reloadData()
    }
}

extension MaquinasViewController: UICollectionViewDelegateFlowLayout {
    
    enum ConstantesDeLayout {
        static let alturaDaCelula = 260
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let maquina = presenter.maquinas[indexPath.item]
        let vc = DetalheProdutoModalViewController(produto: maquina)
        
        present(vc, animated: true)
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//
//    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//
//    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//
//    }
}
