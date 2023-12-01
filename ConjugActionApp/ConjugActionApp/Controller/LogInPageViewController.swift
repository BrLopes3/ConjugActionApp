//
//  LogInPage.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-10-13.
//

import UIKit

class LogInPageViewController: UIViewController {

    var username: String?
    var password: String?
    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnLoginUIButton: UIButton!
   
    @IBOutlet weak var btnSignUpUIButton: UIButton!
    
    @IBOutlet weak var btnRevealPassword: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        initialize()
        
    }
    
    private func initialize(){
        
        if username != nil && password != nil{
            txtUsername.text = username
            txtPassword.text = password
        }else{
            txtUsername.text = "bruno"
            txtPassword.text = "1234"
        }
        txtPassword.isSecureTextEntry = true
        btnLoginUIButton.layer.cornerRadius = 25
        btnSignUpUIButton.layer.cornerRadius = 25
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == Segue.toViewController{
            
            let username = txtUsername.text!.lowercased()
            let password = txtPassword.text!
            
            let verifyCredentials = UserProvider.verifyCredentials(userInput: username, passwordInput: password)
            
            if verifyCredentials{
                
                return !txtUsername.text!.isEmpty
            }else{
                Toast.ok(view: self, title: "Wrong Credentials", message: "Username or password are wrong")
            }
        }else if identifier == Segue.toSignupPage{
            return true
        }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Segue.toViewController{
            (segue.destination as! ViewController).username = self.txtUsername.text!.capitalized
        }
        
    }
    
    
    
    @IBAction func btnRevealTouchUpInside(_ sender: Any) {
        
        txtPassword.isSecureTextEntry.toggle()
    }
    
    
    @IBAction func btnRevealTouchDown(_ sender: Any) {
        
        txtPassword.isSecureTextEntry.toggle()
    }
    

 
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
