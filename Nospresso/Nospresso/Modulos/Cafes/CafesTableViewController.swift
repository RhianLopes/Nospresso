//
//  CafesTableViewController.swift
//  Nospresso
//
//  Created by Rhian Lopes da Costa on 15/10/20.
//

import UIKit

class CafesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Seção \(section)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "cafe-cell", for: indexPath)
        celula.textLabel?.text = "Indice \(indexPath.item)"
        return celula
    }
}
