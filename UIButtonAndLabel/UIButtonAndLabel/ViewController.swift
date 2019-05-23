//
//  ViewController.swift
//  UIButtonAndLabel
//
//  Created by Nikolai Pavlov on 23/05/2019.
//  Copyright © 2019 Nikolai Pavlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Это свойство скрытия надписи LABEL
        label.isHidden = true
        label.font = label.font.withSize(35)
        label.textColor = UIColor.red
        
        button.setTitle("Get result", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = .green
        
    }


    @IBAction func pressedButton(_ sender: UIButton) {
        
        if label.isHidden {
            label.isHidden = false
            label.text = "Hello, World!"
            
            button.setTitle("Clear", for: UIControl.State.normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .red
        } else {
            label.isHidden = true
            
            button.setTitle("Get result", for: .normal)
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .green
        }
    }
}

