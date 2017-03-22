//
//  FirstViewController.swift
//  Korandil App
//
//  Created by abhishek on 3/22/17.
//  Copyright © 2017 abhishek. All rights reserved.
//

import UIKit

class TechnologyViewController: UIViewController {

    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    
    @IBOutlet weak var firstImage: UIImageView!
    
    @IBOutlet weak var secondImage: UIImageView!
    
    @IBOutlet weak var holderImage: UIImageView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBAction func pageControlClick(_ sender: Any) {
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        //animStart(newImage: "daf", newHolderImage: "dsaf")
        
        pageControl.numberOfPages = 4
        pageControl.currentPage = 0
        firstLabel.isHidden = true
        i = 0
        firstTime()
        
    }
    
    private func firstTime(){
        firstLabel.text = "Polyolifin Layer"
        self.firstImage.isHidden = true
        self.holderImage.isHidden = true
        var _ = Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (timer) in
            
            print("called")
            self.holderImage.isHidden = false
            self.holderImage.image = UIImage(named: self.holders[0])
        }
    }
    
    private func animStart(txt: String, newImage: String, newHolderImage: String){
        
        firstImage.image = UIImage(named: newImage)
        
        holderImage.isHidden = true
        
//        //move it up
//        UIView.animate(withDuration: 0.2, animations: {
//            
//            self.firstImage.transform = CGAffineTransform(translationX: 0, y: -95)
//            
//        }) { (what) in
//            //
//            //set it back
//        }
        
        firstImage.isHidden = false
        
        UIView.animate(withDuration: 1, animations: {
            
            self.firstImage.transform = CGAffineTransform(translationX: 0, y: 110)
            
        }) { (what) in
            //
            print("Out put is \(what)" )
            
            self.holderImage.image = UIImage(named: newHolderImage)
            self.holderImage.isHidden = false
            
            self.secondImage.image = UIImage(named: newImage)
            //set it back
            self.firstImage.isHidden = true
            
            UIView.animate(withDuration: 0.1, animations: {
                
                self.firstImage.transform = CGAffineTransform(translationX: 0, y: -100)
                
            }) { (what) in
                //
                //set it back
            }
        }
        
        
        
        //**************//
        //same with label
        self.firstLabel.isHidden = false
        self.firstLabel.text = txt
        UIView.animate(withDuration: 1, animations: {
            
            self.firstLabel.transform = CGAffineTransform(translationX: 0, y: 110)
            
        }) { (what) in
            //
            
            self.firstLabel.isHidden = true
            self.secondLabel.text = txt
            UIView.animate(withDuration: 0.1, animations: {
                
                self.firstLabel.transform = CGAffineTransform(translationX: 0, y: -100)
                
            }) { (what) in
                //
                //set it back
            }
        }

        
    }
    
    
    //main click
    
    
    @IBOutlet weak var mainView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    var i: Int = 0
    
    var texts = ["Polyolefin Layer", "Aluminium Layer", "Polyamide Layer", "dsaf"]
    
    
    var holders = ["Zoom Polyolefin Layer.png", "Zoom Aluminium Layer.png", "Zoom Polyamide Layer.png", "all"]
    
    var firstImgs = ["Strip Polyolefin Layer.png", "Strip Aluminium Layer.png", "Strip Polyamide Layer.png", "all"]
    
    private func change(val: Int){
        self.tabBarController?.selectedIndex = val
    }
    
    @IBAction func swipeAction(_ sender: Any) {
        
        print("swiped")
        i+=1
        
        pageControl.currentPage = i
        
        if(i>=3){
            //last
            return
        }
        
        if(i<=0){
            //first
            return
        }
        
        animStart(txt: texts[i], newImage: firstImgs[i], newHolderImage: holders[i])
        
        
    }
    
    
    @IBOutlet var swipeOutlet: UISwipeGestureRecognizer!

    @IBAction func homeClick(_ sender: Any) {
        change(val: 0)
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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

