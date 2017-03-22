//
//  SecondViewController.swift
//  Korandil App
//
//  Created by abhishek on 3/22/17.
//  Copyright © 2017 abhishek. All rights reserved.
//

import UIKit

class AdvantagesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func homeClick(_ sender: Any) {
        change(val: 0)
    }
    
    @IBAction func techClick(_ sender: Any) {
        change(val: 1)
    }
    
    @IBAction func advClick(_ sender: Any) {
        change(val: 2)
    }
    
    
    private func change(val: Int){
        self.tabBarController?.selectedIndex = val
    }
    
    
    @IBAction func ceClick(_ sender: Any) {
        change(val: 3)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

