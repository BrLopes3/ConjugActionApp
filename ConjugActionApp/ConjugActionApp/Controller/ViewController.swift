//
//  ViewController.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-10-04.
//

import UIKit

class ViewController: UIViewController {
    
    var username: String?
    
    @IBOutlet weak var lblGreetings: UILabel!
    
    @IBOutlet weak var txtInputVerb: UITextField!
    
    @IBOutlet weak var btnConjuguerUIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    private func initialize(){
        
        btnConjuguerUIButton.layer.cornerRadius = 25
        lblGreetings.text = "Bonjour " + username!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segue.toConjugationPage{
            
            (segue.destination as! ConjugationPageViewController).verb = txtInputVerb.text
       
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == Segue.toConjugationPage{
            return true
        }
        return false
    }
    

    
    
    
}
