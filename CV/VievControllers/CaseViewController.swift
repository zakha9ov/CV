//
//  CaseViewController.swift
//  CV
//
//  Created by Mikhail Zakharov on 30.08.2020.
//  Copyright © 2020 Mikhail Zakharov. All rights reserved.
//

import UIKit

class CaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showCaseButtonPress() {
        guard let url = NSURL(string: "https://zakha9ov.ru/blog/tags/keys/") else {return}
        UIApplication.shared.open(url as URL)
    }
}
