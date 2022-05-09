//
//  AboutProjectViewController.swift
//  MerchMuiv
//
//  Created by Andrew Bondarenko on 07.05.2022.
//

import UIKit
import Firebase

class AboutProjectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func singOutPressed(_ sender: UIButton) {
        do {
            try Auth.auth().signOut()
        } catch {
            print(error.localizedDescription)
        }
        dismiss(animated: true, completion: nil)
    }
}
// выход из приложения
