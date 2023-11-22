//
//  ConjugationPageViewController.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-11-22.
//

import UIKit

class ConjugationPageViewController: UIViewController {
    
    var verb : String?
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var lblVerb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblVerb.text = verb
        
    }
    


}
