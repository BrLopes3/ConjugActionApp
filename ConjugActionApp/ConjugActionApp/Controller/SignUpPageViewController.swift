//
//  SignUpPageViewController.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-11-22.
//

import UIKit

class SignUpPageViewController: UIViewController{
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var btnSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    private func initialize(){
        btnSignUp.layer.cornerRadius = 25
        txtPassword.isSecureTextEntry = true
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        
        
        
        let email = txtEmail.text!.lowercased()
        
        let name = txtName.text!
        
        let password = txtPassword.text!
        
        if email.isEmpty || password.count<3{
            
            Toast.ok(view: self, title: "Error", message: "E-mail can not be empty or have less than 3 characters")
            return false
        }
        if password.isEmpty || password.count<3{
            Toast.ok(view: self, title: "Error", message: "Password can not be empty or have less than 3 characters")
            return false
        }
        if identifier == Segue.backToLoginPage{
//            let newUser = User(username: username, password: password)
//            UserProvider.allUsers.append(newUser)
//            
//            Toast.ok(view: self, title: "Success", message: "User created! Welcome to our application"){
//                alertToLogin in self.performSegue(withIdentifier: Segue.backToLoginPage, sender: self)
//            }
            
        }
        
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segue.backToLoginPage{
            (segue.destination as! LogInPageViewController).email = self.txtEmail.text!
            
            (segue.destination as! LogInPageViewController).password = self.txtPassword.text!
        }
    }
    
    @IBAction func btnshowPasswordTouchUpInside(_ sender: Any) {
        
        txtPassword.isSecureTextEntry.toggle()
    }
    
    @IBAction func btnshowPasswordTouchDown(_ sender: Any) {
        txtPassword.isSecureTextEntry.toggle()
    }
    
    
    
}
