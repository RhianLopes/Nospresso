//
//  DetalheCafeViewController.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 20/10/20.
//

import UIKit

class DetalheCafeViewController: UIViewController {
    
    @IBOutlet weak var cafeImageView: UIImageView!
    @IBOutlet weak var intensidadeStackView: ContadorIntensidadeStackView!
    @IBOutlet weak var medidaStackView: UIStackView!
    @IBOutlet weak var intensidadeLabel: UILabel!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var origemDescricaoLabel: UILabel!
    @IBOutlet weak var torrefacaoDescricaoLabel: UILabel!
    @IBOutlet weak var perfilAromaticoDescricaoLabel: UILabel!
    
    
    var presenter: DetalheCafePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.telaCarregou()
    }
    
    @objc
    func toqueFavorito() {
        presenter?.apertouFavoritar()
    }
}

extension DetalheCafeViewController: DetalheCafeViewType {
    
    func exibirTitulo(_ titulo: String) {
        title = titulo
    }
    
    func exibirDados(do cafe: Cafe) {
        DispatchQueue.main.async {
            self.cafeImageView.carregarImagem(usando: cafe.imagem)
            self.tituloLabel.text = cafe.descricao
            self.origemDescricaoLabel.text = cafe.origem
            self.torrefacaoDescricaoLabel.text = cafe.torrefacao
            self.perfilAromaticoDescricaoLabel.text = cafe.perfilAromatico
            
            
            if let intensidade = cafe.intensidade {
                self.intensidadeStackView.configurar(para: intensidade)
                
                self.intensidadeLabel.text = "intensidade: \(intensidade)"
            } else {
                self.intensidadeLabel.isHidden = true
            }
            
            for medida in cafe.medidas {
                let view = MedidaView.doNib()
                view.configurar(com: medida)
                self.medidaStackView.addArrangedSubview(view)
            }
            
            self.medidaStackView.addArrangedSubview(UIView())
        }
    }
    
    func configurarBotaoFavoritismo(_ favoritado: Bool) {
        let imagem = favoritado ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        let tintura = favoritado ? Paleta.vermelhoAmor() : .black
        
        let botaoDeAcao = UIBarButtonItem.init(image: imagem, style: .plain, target: self, action: #selector(toqueFavorito))
        botaoDeAcao.tintColor = tintura
        
        navigationItem.rightBarButtonItem = botaoDeAcao
    }
}
