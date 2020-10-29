//
//  AcessoriosViewController.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 28/10/20.
//

import UIKit

class AcessoriosTableViewController: UITableViewController {
    
    private let api = Api()
    private var acessorios: [Acessorio] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requisitar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.barTintColor = Paleta.acessorios()
        navigationController?.navigationBar.tintColor = .label
    }
}

//MARK: Backend
extension AcessoriosTableViewController {
    
    func requisitar() {
        api.requisitar(endpoint: .acessorios) { (acessorios: [Acessorio]) in
            self.acessorios = acessorios
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } falha: { erro in
            print(erro)
        }
    }
}

//MARK: UITableViewDelegate
extension AcessoriosTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        acessorios[section].itens.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        acessorios.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cabecalho = R.nib.categoriaDeAcessorioHeaderView.firstView(owner: nil)

        cabecalho?.configurar(com: acessorios[section])

        return cabecalho
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat { 40 }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { 100 }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "acessorio-cell", for: indexPath) as! AcessorioTableViewCell
        let acessorio = acessorios[indexPath.section].itens[indexPath.row]

        celula.configurar(com: acessorio)
        return celula
    }
}

