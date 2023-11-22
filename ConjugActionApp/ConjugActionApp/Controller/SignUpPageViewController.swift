//
//  SignUpPageViewController.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-11-22.
//

import UIKit

class SignUpPageViewController: UIViewController{
    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    @IBOutlet weak var btnSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    private func initialize(){
        btnSignUp.layer.cornerRadius = 25
        txtPassword.isSecureTextEntry = true
        txtConfirmPassword.isSecureTextEntry = true
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let username = txtUsername.text!.lowercased()
        
        let password = txtPassword.text!
        
        let confirmPassword = txtConfirmPassword.text!
        
        if username.isEmpty || password.count<3{
            
            Toast.ok(view: self, title: "Error", message: "Username can not be empty or have less than 3 characters")
            return false
        }
        if password.isEmpty || password.count<3{
            Toast.ok(view: self, title: "Error", message: "Password can not be empty or have less than 3 characters")
            return false
        }
        if password != confirmPassword{
            Toast.ok(view: self, title: "Error", message: "Passwords do not match. Try again")
            return false
        }
        if identifier == Segue.backToLoginPage{
            let newUser = User(username: username, password: password)
            UserProvider.allUsers.append(newUser)
            
            Toast.ok(view: self, title: "Success", message: "User created! Welcome to our application"){
                alertToLogin in self.performSegue(withIdentifier: Segue.backToLoginPage, sender: self)
            }
            
        }
        
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segue.backToLoginPage{
            (segue.destination as! LogInPageViewController).username = self.txtUsername.text!
            
            (segue.destination as! LogInPageViewController).password = self.txtPassword.text!
        }
    }
    
    @IBAction func btnshowPasswordTouchUpInside(_ sender: Any) {
        
        txtPassword.isSecureTextEntry.toggle()
    }
    
    @IBAction func btnshowPasswordTouchDown(_ sender: Any) {
        txtPassword.isSecureTextEntry.toggle()
    }
    
    
    @IBAction func btnshowConfirmTouchUpInside(_ sender: Any) {
        txtConfirmPassword.isSecureTextEntry.toggle()
    }
    
    @IBAction func btnshowConfirmTouchDown(_ sender: Any) {
        txtConfirmPassword.isSecureTextEntry.toggle()
    }
    
    
    
  
    
    
    
    
    
}
