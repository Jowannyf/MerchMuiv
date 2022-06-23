//
//  WearCell.swift
//  MerchMuiv
//
//  Created by Andrew Bondarenko on 23.06.2022.
//

import UIKit

class WearCell: UICollectionViewCell {

    @IBOutlet var NameProduct: UILabel!
    @IBOutlet var wearImage: UIImageView!
    @IBOutlet var PriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        self.wearImage.image = nil
    }
    
    func setupCell(product: Product) {
        self.wearImage.image = product.image
        self.NameProduct.text = product.name
        self.PriceLabel.text = "\(product.price)"
    }
}
