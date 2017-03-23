//
//  SecondViewController.swift
//  Korandil App
//
//  Created by abhishek on 3/22/17.
//  Copyright © 2017 abhishek. All rights reserved.
//

import UIKit

class AdvantagesViewController: UIViewController {

    @IBOutlet weak var firstAdv: UIImageView!
    
    @IBOutlet weak var secondAdv: UIImageView!
    
    @IBOutlet weak var thirdAdv: UIImageView!
    
    
    override func viewDidAppear(_ animated: Bool) {
        firstAdv.isHidden = true
        secondAdv.isHidden = true
        thirdAdv.isHidden = true
        runAnim()
    }
    
    
    private func runAnim(){
        var _ = Timer.scheduledTimer(withTimeInterval: 0.7, repeats: false) { (timer) in
            
            self.firstAdv.isHidden = false
            
            var _ = Timer.scheduledTimer(withTimeInterval: 0.7, repeats: false) { (timer) in
                
                self.secondAdv.isHidden = false
                
                var _ = Timer.scheduledTimer(withTimeInterval: 0.7, repeats: false) { (timer) in
                    
                    self.thirdAdv.isHidden = false
                    
                }
                
            }
            
        }
    }
    
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

