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
    @IBOutlet weak var topTextFld: UITextField!
    @IBOutlet weak var bottomTextFld: UITextField!
    @IBOutlet weak var switcher: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnTapped(_ sender: Any) {
        if switcher.isOn {
        let sum = Double(topTextFld.text!)! + Double(bottomTextFld.text!)!
        customLabel.text = ("\(topTextFld.text!) + \(bottomTextFld.text!) = \(sum)")
        } else {
            let sum = Double(topTextFld.text!)! - Double(bottomTextFld.text!)!
            customLabel.text = ("\(topTextFld.text!) - \(bottomTextFld.text!) = \(sum)")
        }
    }
    
    @IBAction func switchBtn(_ sender: Any) {
        if switcher.isOn{
        view.backgroundColor = UIColor.red
        } else {
            view.backgroundColor = UIColor.cyan
        }
    }
    
}

