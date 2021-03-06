//
//  DetalheProdutoModalViewController.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 24/10/20.
//

import UIKit

class DetalheProdutoModalViewController: UIViewController {
    
    let produto: Produto?
    
    let item: Item?
    
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var precoLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var ensacolarButton: UIButton! {
        didSet {
            ensacolarButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
            ensacolarButton.layer.shadowOffset = CGSize(width: 2, height: 2)
            ensacolarButton.layer.shadowRadius = 2
            ensacolarButton.layer.shadowOpacity = 1
        }
    }
    
    @IBAction func toqueFechar(_ sender: Any) {
        dismiss(animated: true)
    }
    
    init(produto: Produto) {
        self.produto = produto
        self.item = nil
        super.init(nibName: R.nib.detalheProdutoModalViewController.name, bundle: .main)
    }
    
    init(item: Item) {
        self.produto = nil
        self.item = item
        super.init(nibName: R.nib.detalheProdutoModalViewController.name, bundle: .main)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let produto = produto {
            fotoImageView.carregarImagem(usando: produto.imagem)
            nomeLabel.text = produto.nome
            precoLabel.text = produto.preco.comoDinheiro
            descricaoLabel.text = produto.descricao
        } else if let item = item {
            fotoImageView.carregarImagem(usando: item.imagem)
            nomeLabel.text = item.nome
            precoLabel.text = item.preco.comoDinheiro
            descricaoLabel.text = item.descricao
        }
        
    }

}
