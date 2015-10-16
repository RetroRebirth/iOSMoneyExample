//
//  ViewController.swift
//  iOSMoneyExample
//
//  Created by Christopher Williams on 10/15/15.
//  Copyright © 2015 Christopher Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let test = iOSMoney(cents: 12345)
        label.text = test.format()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

