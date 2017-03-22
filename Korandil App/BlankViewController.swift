//
//  BlankViewController.swift
//  Korandil App
//
//  Created by abhishek on 3/22/17.
//  Copyright © 2017 abhishek. All rights reserved.
//

import UIKit

class BlankViewController: UIViewController {

    var played = false
    
    override func viewDidAppear(_ animated: Bool) {
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    private func change(val: Int){
        self.tabBarController?.selectedIndex = val
    }
    
    
    
    @IBAction func technologyClick(_ sender: Any) {
        change(val: 1)
    }
   

    
    
    @IBAction func homeClick(_ sender: Any) {
    }
    
    
    @IBAction func advanClick(_ sender: Any) {
        change(val: 2)
    }
    
    
    
    @IBAction func ceClick(_ sender: Any) {
        change(val: 3)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
