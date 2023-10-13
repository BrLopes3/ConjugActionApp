//
//  LogInPage.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-10-13.
//

import UIKit

class LogInPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        btnLoginUIButton.layer.cornerRadius = 25
        btnSignUpUIButton.layer.cornerRadius = 25

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLoginTouchUpInside(_ sender: Any) {
        
    }
    
    @IBAction func btnSignUpTouchUpInside(_ sender: Any) {
        
        
    }
    
    
    @IBOutlet weak var btnLoginUIButton: UIButton!
    
    @IBOutlet weak var btnSignUpUIButton: UIButton!
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
