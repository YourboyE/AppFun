//
//  ViewController.swift
//  AppFun
//
//  Created by YBE on 1/5/18.
//  Copyright © 2018 DreamDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pressMeBtn: UIButton!
    @IBOutlet weak var customLabel: UILabel!
    var buttonCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.cyan
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnTapped(_ sender: Any) {
        buttonCount = buttonCount + 1
        
        if buttonCount <= 10 {
            customLabel.text = "\(buttonCount)"
        } else if buttonCount > 10 {
            customLabel.text = "Your Done"
            buttonCount = 0
        }
        
        }
    
    
}

