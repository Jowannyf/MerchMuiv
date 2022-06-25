//
//  BusketViewController.swift
//  MerchMuiv
//
//  Created by Andrew Bondarenko on 24.06.2022.
//

import UIKit

class BusketViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func Clearbucketbutton(_ sender: Any) {
        showAlert(title: "Ошибка!", message: "Корзина пуста")
    }
    @IBAction func BusketButtonPressed(_ sender: Any) {
        showAlert(title: "Корзина пуста",
                  message: "Пожалуйста, выберите товар")
    }
}
extension BusketViewController {
    private func showAlert(title: String,
                           message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok",
                                     style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


