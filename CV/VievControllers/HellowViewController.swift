//
//  HellowViewController.swift
//  CV
//
//  Created by Mikhail Zakharov on 29.08.2020.
//  Copyright © 2020 Mikhail Zakharov. All rights reserved.
//

import UIKit

class HellowViewController: UIViewController {

    @IBOutlet weak var helllowLabel: UILabel!
    
    var userName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let name = userName else {return}
        helllowLabel.text = "Привет, \(name)"
    }
    

    
}
