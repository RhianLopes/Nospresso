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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.barTintColor = Paleta.maquinas()
        navigationController?.navigationBar.tintColor = .label
    }

}

extension MaquinasViewController: MaquinasViewType {
    func recarregarColecao() {
        collectionView.reloadData()
    }
}

extension MaquinasViewController: UICollectionViewDelegateFlowLayout {
    
    enum ConstantesDeLayout {
        static let alturaDaCelula: CGFloat = 260
        static let espacamentoHorizontal: CGFloat = 16
        static let espacamentoVertical: CGFloat = 20
        
        static func largura(baseadaNa larguraDaCollectionView: CGFloat) -> CGFloat {
            (larguraDaCollectionView - espacamentoHorizontal) / 2 - espacamentoHorizontal
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let maquina = presenter.maquinas[indexPath.item]
        let vc = DetalheProdutoModalViewController(produto: maquina)
        
        present(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        .init(width: ConstantesDeLayout.largura(baseadaNa: collectionView.frame.width),
              height: ConstantesDeLayout.alturaDaCelula)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        .init(top:  ConstantesDeLayout.espacamentoVertical,
              left: ConstantesDeLayout.espacamentoHorizontal,
              bottom: ConstantesDeLayout.espacamentoVertical,
              right: ConstantesDeLayout.espacamentoHorizontal)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        ConstantesDeLayout.espacamentoHorizontal
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        ConstantesDeLayout.espacamentoVertical
    }
}
