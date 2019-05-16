//
//  ViewController.swift
//  DataFlowExample
//
//  Created by Jazilul Athoya on 16/05/19.
//  Copyright © 2019 Jazilul Athoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fullnameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // buat assign delegate dari viewcontroller ke textfield
        fullnameTextField.delegate = self
        phoneTextField.delegate = self
    }
    
    @IBAction func registerUser(_ sender: Any) {
        // action buat segue/pindah halaman
        performSegue(withIdentifier: "GoToHome", sender: nil)
    }
    
    // fungsi yang dijalan seleah performSegue, salah satu kegunaannya adalah untuk passing data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // jika castingnya berhasil dan dapet HomeViewController maka ..
        if let destination = segue.destination as? HomeViewController {
            // kita set nilai name di HomeViewController ke textfield
            destination.name = fullnameTextField.text
        }
    }
    
}

// extension buat textfield implementasi textfield delegate
extension ViewController: UITextFieldDelegate {
    
    // kalo misal kita klik di keyboard return apa yang terjadi
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // jika textfieldnya yang fullname maka nextnya ke phoneTextField
        if textField == fullnameTextField {
            // ke focus setelahnya
            phoneTextField.becomeFirstResponder()
        } else if textField == phoneTextField {
            // menghilangkan focus dari textfield yang sedang focus
            textField.resignFirstResponder()
        }
        
        return true
    }
    
}
