//
//  CatalogTableViewCell.swift
//  MerchMuiv
//
//  Created by Andrew Bondarenko on 13.05.2022.
//

import UIKit

class CatalogTableViewCell: UITableViewCell {

    @IBOutlet var CatalogView: UIView!
    
    @IBOutlet var CatalogImgView: UIImageView!
    @IBOutlet var CatalogLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
