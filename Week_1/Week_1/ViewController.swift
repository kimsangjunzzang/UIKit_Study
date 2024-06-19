//
//  ViewController.swift
//  Week_1
//
//  Created by 김상준 on 6/20/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        emailField.becomeFirstResponder()
    }
    
    @IBAction func login(_ sender: Any) {
        
        guard let email = emailField.text, !email.isEmpty else{
            showAlert("이메일 써라")
            return
        }
        guard let password = passwordField.text, !password.isEmpty else{
            showAlert("비밀번호 써라")
            return
        }
        if email == "lmk0347@naver.com" && password == "1234"{
            showAlert("로그인 성공")
        }else{
            showAlert("로그인 실패")
        }
    }
    
    func showAlert(_ message : String){
        let alert = UIAlertController(
            title: "로그인",
            message: "\(message)",
            preferredStyle: .alert)
        
        let okAction = UIAlertAction(
            title: "확인",
            style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
extension ViewController : UITextFieldDelegate {
    func textField(
        _ textField: UITextField,
        shouldChangeCharactersIn range: NSRange,
        replacementString string: String
    ) -> Bool {
        
        var finalEmail = emailField.text ?? ""
        var finalPassword = passwordField.text ?? ""
        
        if textField == emailField {
            guard let range = Range(range, in: finalEmail) else {
                return true
            }
            finalEmail = finalEmail.replacingCharacters(in: range, with: string)
            
        }else if textField == passwordField {
            guard let range = Range(range, in: finalPassword) else {
                return true
            }
            finalPassword = finalPassword.replacingCharacters(in: range, with: string)
        }
        
        loginButton.isEnabled = !finalEmail.isEmpty && !finalPassword.isEmpty
        
        return true
    }
    
    func textFieldShouldReturn(
        _ textField: UITextField
    ) -> Bool {
        
        switch textField {
        case emailField:
            passwordField.becomeFirstResponder()
            
        case passwordField:
            login(self)
            
        default:
            break
        }
        return false
    }
}



