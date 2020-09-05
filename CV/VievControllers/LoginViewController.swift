//
//  LoginViewController.swift
//  CV
//
//  Created by Mikhail Zakharov on 29.08.2020.
//  Copyright © 2020 Mikhail Zakharov. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passeordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginChecked" {
            guard let tabBarController = segue.destination as? UITabBarController else {return}
            guard let hellowVC = tabBarController.viewControllers?.first as? HellowViewController else {return}
            hellowVC.userName = nameTextField.text
        }
    }
    
    @IBAction func loginButtonPress() {
        guard passeordTextField.text == "123"
            else {showAlert(with: "👉🏼 Упс 👈🏼",
                            and: "Не верен логин или пароль",
                            textField: passeordTextField)
                return
                
        }
        
        performSegue(withIdentifier: "loginChecked",
                     sender: nil)
    }
    
    @IBAction func forgotNameButtonPress() {
        showAlert(with: "Введите ваше имя:",
                  and: "Если вас зовут Алексей — так и пишите")
    }
    @IBAction func forgotPasswordPress() {
        showAlert(with: "Ваш  пароль:", and: "123")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        nameTextField.text = nil
        passeordTextField.text = nil
       }
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let aletrButton = UIAlertAction(title: "OK",
                                        style: .default) { _ in textField?.text = nil}

        alert.addAction(aletrButton)
        present(alert, animated: true, completion: nil)
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           if textField == nameTextField {
               textField.resignFirstResponder()
               passeordTextField.becomeFirstResponder()
           } else {
               loginButtonPress()
           }
           return true
       }
}




