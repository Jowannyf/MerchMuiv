//
//  AboutProjectViewController.swift
//  MerchMuiv
//
//  Created by Andrew Bondarenko on 07.05.2022.
//

import UIKit
import Firebase

class AboutProjectViewController: UIViewController {

    @IBOutlet var SignOutButton: UIButton!
    @IBOutlet var AboutProjectLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SignOutButton.layer.cornerRadius = SignOutButton.frame.height / 2
        
        AboutProjectLabel.text = "Проект подготовил выпускник Московского Университета имени С.Ю.Витте Жуков Иван"
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
// Выход из приложения
