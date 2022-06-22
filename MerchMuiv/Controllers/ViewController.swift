//
//  ViewController.swift
//  MerchMuiv
//
//  Created by Ivan Zhukov on 14.04.2022.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let segueIdentifier = "LogSegue"
    
    @IBOutlet var warnLabel: UILabel!
    
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let primaryColor = UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1)
    private let secondaryColor = UIColor(red: 107/255, green: 148/255, blue: 230/255, alpha: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVertGrad(topColor: primaryColor, bottomColor: secondaryColor)
        warnLabel.alpha = 0
        Auth.auth().addStateDidChangeListener({ [weak self] (auth, user) in
            if user != nil {
                self?.performSegue(withIdentifier: (self?.segueIdentifier)!, sender: nil)
        }
    })
}
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        emailTextfield.text = ""
        passwordTextField.text = ""
    }
// Очищение полей после выхода
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func displayWarning(WithText text: String) {
        warnLabel.text = text
        
        UIView.animate(withDuration: 3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut, animations: { [weak self] in self?.warnLabel.alpha = 1}) { [weak self] complete  in
            self?.warnLabel.alpha = 0
        }
    }
// Анимация алерта
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard let email = emailTextfield.text, let password = passwordTextField.text, email != "", password != "" else {
            displayWarning(WithText: "Данные не корректны")
            return
        }
        Auth.auth().signIn(withEmail: email, password: password, completion: { [weak self] (user, error) in
                if error != nil {
                    self?.displayWarning(WithText: "Произошла ошибка")
                    return
                }
            
            if user != nil {
                self?.performSegue(withIdentifier: "LogSegue", sender: nil)
                return
            }
            self?.displayWarning(WithText: "Такого пользователя нет")
        })
    }
// Авторизация пользователя
        @IBAction func regButtonPressed(_ sender: UIButton) {
            guard let email = emailTextfield.text, let password = passwordTextField.text, email != "", password != "" else {
                displayWarning(WithText: "Данные не корректны")
                return
            }
                Auth.auth().createUser(withEmail: email, password: password, completion: {  (user, error) in
                    if error == nil {
                        if user != nil {
                        } else {
                        print("Пользователь не создан")
                        }
                    } else {
                        print(error!.localizedDescription)
                    }
                })
            }
    }
// Регистрация пользователя
extension UIView {
    func addVertGrad(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor,bottomColor.cgColor]
        gradient.locations = [0.0,1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
// Расширение на кастомный фон
