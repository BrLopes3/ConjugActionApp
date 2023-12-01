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
            if txtInputVerb.text == "aller"{
                (segue.destination as! ConjugationPageViewController).tableVerb = VerbProvider.aller
            }else if txtInputVerb.text == "parler"{
                (segue.destination as! ConjugationPageViewController).tableVerb = VerbProvider.parler
            }else{
                Toast.ok(view: self, title: "Verb not found", message: "Try another verb")
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == Segue.toConjugationPage{
            
            return true
        }
        return false
    }
    

    
    
    
}
