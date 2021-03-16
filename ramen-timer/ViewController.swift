//
//  ViewController.swift
//  ramen-timer
//
//  Created by Shogo Yamamoto on 2021/03/16.
//  Copyright © 2021年 Yamamoto Shogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func touchedButton(_ sender: UIButton) {
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

