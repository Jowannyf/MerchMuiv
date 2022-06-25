//
//  Wear.swift
//  MerchMuiv
//
//  Created by Andrew Bondarenko on 23.06.2022.
//

import Foundation
import UIKit

struct Product {
    var name: String
    var price: Float
    var image: UIImage
}
// Структура товаров
class Wear {
    var wears = [Product]()
    
    init() {
        setup()
    }
    
    func setup() {
        
        let p1 = Product(name: "Футболка мужская белая", price: 400, image: UIImage(named: "Футболка 1")!)
        let p2 = Product(name: "Футболка мужская голубая", price: 350, image: UIImage(named: "Футболка 2")!)
        let p3 = Product(name: "Футболка мужская ментол", price: 300, image: UIImage(named: "Футболка 3")!)
        let p4 = Product(name: "Футболка женская серый меланж", price: 450, image: UIImage(named: "Футболка 4")!)
        let p5 = Product(name: "Футболка женская голубая", price: 400, image: UIImage(named: "Футболка 5")!)
        let p6 = Product(name: "Футболка женская ментол", price: 400, image: UIImage(named: "Футболка 6")!)
        self.wears = [p1,p2,p3,p4,p5,p6]
    }
}
