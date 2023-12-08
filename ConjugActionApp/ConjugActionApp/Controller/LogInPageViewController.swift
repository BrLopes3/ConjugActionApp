//
//  LogInPage.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-10-13.
//

import UIKit

class LogInPageViewController: UIViewController {
    
    var email: String?
    var password: String?
    var name: String?
    
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnLoginUIButton: UIButton!
    
    @IBOutlet weak var btnSignUpUIButton: UIButton!
    
    @IBOutlet weak var btnRevealPassword: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        initialize()
        
    }
    
    private func initialize(){
        
//        if email != nil && password != nil{
//            txtEmail.text = email
//            txtPassword.text = password
//        }else{
//            txtEmail.text = ""
//            txtPassword.text = ""
//        }
        txtPassword.isSecureTextEntry = true
        //style configuration
        btnLoginUIButton.layer.shadowColor = UIColor.gray.cgColor
        btnLoginUIButton.layer.shadowOpacity = 0.8
        btnLoginUIButton.layer.shadowOffset = .init(width:5, height:5)
        btnLoginUIButton.layer.cornerRadius = 25
        
        btnSignUpUIButton.layer.shadowColor = UIColor.gray.cgColor
        btnSignUpUIButton.layer.shadowOpacity = 0.8
        btnSignUpUIButton.layer.shadowOffset = .init(width:5, height:5)
        btnSignUpUIButton.layer.cornerRadius = 25
    }
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        
//        if identifier == Segue.toViewController{
//            
//            let username = txtUsername.text!.lowercased()
//            let password = txtPassword.text!
//            
//            // change that to do the verification with the API
//            //  let verifyCredentials = UserProvider.verifyCredentials(userInput: username, passwordInput: password)
//            FrenchVerbAPI.signIn(email: username, password: password) { token in
//                
//                Context.loggedUserToken = token
//                
//
//            } failHandler: { httpStatusCode, errorMessage in
//                
//                Toast.ok(view: self, title: "Wrong Credentials", message: errorMessage)
//            }
//        
//        
//        }
//        else if identifier == Segue.toSignupPage{
//            return true
//        }else {
//            return false
//        }
//        return false
//    }
    
    
    @IBAction func btnLoginTouchUpInside(_ sender: Any) {
        
        let email = txtEmail.text!.lowercased()
        let password = txtPassword.text!
        
        FrenchVerbAPI.signIn(email: email, password: password) { token in
            
            Context.loggedUserToken = token
            
            print("logged with token: \(token)" )
            
            
            DispatchQueue.main.async{
                self.performSegue(withIdentifier: Segue.toViewController, sender: self)
            }
            
            
        } failHandler: { httpStatusCode, errorMessage in
            DispatchQueue.main.async{
                Toast.ok(view: self, title: "An error ocurred", message: errorMessage)
            }
        }

        
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Segue.toViewController{
            (segue.destination as! ViewController).username =
            
            self.txtEmail.text!.capitalized
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
