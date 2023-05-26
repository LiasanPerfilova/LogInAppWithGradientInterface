//
//  ViewController.swift
//  number3
//
//  Created by Liaisan on 5/25/23.
//

import UIKit

class ViewController: UIViewController {
    let user = "User"
    let password = "Pasword"
    
    
    @IBOutlet var enterYournameTextField: UITextField!
    @IBOutlet var enterPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     guard   let welcomVC = segue.destination as? welcomeViewController else {return}
        welcomVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    
    @IBAction func singInButtonAction(_ sender: UIButton) {
        guard enterYournameTextField.text == user, enterPasswordTextField.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Enter login or password",
                textFild: enterPasswordTextField
            )
            
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    
    
    @IBAction func forgotNamePasswordButtonAction(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user)")
        : showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
    func showAlert(title: String, message: String, textFild: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textFild?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
   

    @IBAction func singOutButtonAction(segue: UIStoryboardSegue) {
        enterYournameTextField.text = ""
        enterPasswordTextField.text = ""
    }
}

