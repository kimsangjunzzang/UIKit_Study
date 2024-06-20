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
    
    @IBOutlet weak var xButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let xbutton = xButton
        xbutton?.setImage(UIImage(systemName: "xmark"), for: .normal)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        emailField.becomeFirstResponder()
    }
    
    @IBAction func login(_ sender: Any) {
        
        do {
            
            try checkAcount(email: emailField.text, password: passwordField.text)
            
            showAlert("로그인 성공")
            
        } catch {
            showAlert(error.localizedDescription)
        }
    }
    
    func checkAcount(email: String?, password: String?) throws {
        
        guard let email = email, !email.isEmpty else {
            throw Week1Error.noEmail
        }
        guard let password = password, !password.isEmpty else {
            throw Week1Error.noPassword
        }
        
        if email != "lmk0347@naver.com" || password != "1234"{
            throw Week1Error.loginFail
        }
    }
    
    func showAlert(_ message : String){
        let alert = UIAlertController(
            title: "로그인",
            message: "\(message)",
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(
            title: "확인",
            style: .default
        )
        
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
        print(range)
        
        // MARK: emailField 선택시
        if textField == emailField {
            guard let range = Range(range, in: finalEmail) else {
                return true
            }
            // 마지막 글자 추가
            finalEmail = finalEmail.replacingCharacters(in: range, with: string)
            
        }
        
        else if textField == passwordField {
            guard let range = Range(range, in: finalPassword) else {
                return true
            }
            finalPassword = finalPassword.replacingCharacters(in: range, with: string)
        }
        
        loginButton.isEnabled = !finalEmail.isEmpty && !finalPassword.isEmpty
        
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
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


enum Week1Error: Error, LocalizedError {
    case noEmail
    case noPassword
    case loginFail
    
    var errorDescription: String? {
        switch self {
        case .noEmail:
            return "이메일 써라"
        case .noPassword:
            return "패스워드 써라"
        case .loginFail:
            return "로그인 실패"
        }
    }
}
