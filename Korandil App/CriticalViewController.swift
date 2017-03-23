//
//  CriticalEvidenceVC.swift
//  Korandil App
//
//  Created by abhishek on 3/22/17.
//  Copyright © 2017 abhishek. All rights reserved.
//
import UIKit

class CriticalViewController: UIViewController {

    @IBOutlet weak var firstEvi: UIImageView!
    
    @IBOutlet weak var secondEvi: UIImageView!
    
    @IBOutlet weak var thirdEvi: UIImageView!
    
    @IBOutlet weak var bottomLabel: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstEvi.isHidden = true
        secondEvi.isHidden = true
        thirdEvi.isHidden = true
        bottomLabel.isHidden = true
        runAnim()
        
        // Do any additional setup after loading the view.
    }

    private func runAnim(){
        var _ = Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { (timer) in
            self.firstEvi.isHidden = false
            self.secondEvi.isHidden = false
            self.thirdEvi.isHidden = false
            self.bottomLabel.isHidden = false
        }
    }
    
    private func change(val: Int){
        self.tabBarController?.selectedIndex = val
    }
    
    
    @IBAction func techClick(_ sender: Any) {
        change(val: 1)
    }
    
    @IBAction func advClick(_ sender: Any) {
        change(val: 2)
    }
    
    @IBAction func ceClick(_ sender: Any) {
        change(val: 3)
    }
    
    @IBAction func homeClick(_ sender: Any) {
        change(val: 0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
