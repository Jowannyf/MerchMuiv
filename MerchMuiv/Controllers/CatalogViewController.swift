//
//  CatalogViewController.swift
//  MerchMuiv
//
//  Created by Andrew Bondarenko on 07.05.2022.
//

import UIKit
import Firebase
class CatalogViewController: UIViewController {

    @IBOutlet var CatalogTableView: UITableView!
    
    var category = ["Кофты","Футболки","Свитшоты","Аксессуары"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CatalogTableView.dataSource = self
        CatalogTableView.delegate = self
        CatalogTableView.separatorStyle = .none
        CatalogTableView.showsVerticalScrollIndicator = false
    }
}
extension CatalogViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CatalogTableView.dequeueReusableCell(withIdentifier: "catalogCell") as! CatalogTableViewCell
        let catalog = category[indexPath.row]
        
        cell.CatalogLbl.text = catalog
        
        cell.CatalogView.layer.cornerRadius = cell.CatalogView.frame.height / 2
        cell.CatalogImgView.layer.cornerRadius = cell.CatalogImgView.frame.height / 2
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
}
