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
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var firstImage: UIImageView!
    
    @IBOutlet weak var middleImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    
    @IBOutlet weak var firstShadow: UIImageView!
    
    @IBOutlet weak var secondShadow: UIImageView!
    
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
    
    private func lastTime(){
        //remove items
        self.holderImage.isHidden = true
        self.secondLabel.isHidden = true
        
        //show items
        self.firstImage.image = UIImage(named: "Strip Polyamide Layer.png")
        self.middleImage.image = UIImage(named: "Strip Aluminium Layer.png")
        self.secondImage.image = UIImage(named: "Strip Polyolefin Layer.png")
        
        self.firstImage.isHidden = false
        self.middleImage.isHidden = false
        
        self.firstShadow.isHidden = false
        self.secondShadow.isHidden = false
        
        middleLabel.isHidden = false
        bottomLabel.isHidden = false
        firstLabel.isHidden = false
        
        middleLabel.text = "Aluminium Layer"
        firstLabel.text = "Polyamide Layer"
        bottomLabel.text = "Polyolefin Layer"
    }
    
    private func firstTime(){
        
        secondShadow.isHidden = true
        middleImage.isHidden = true
        firstShadow.isHidden = true
        
        middleLabel.isHidden = true
        bottomLabel.isHidden = true
        firstLabel.isHidden = true
        
        secondLabel.text = "Polyolefin Layer"
        self.firstImage.isHidden = true
        self.holderImage.isHidden = true
        var _ = Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { (timer) in
            
            print("called")
            self.holderImage.isHidden = false
            self.holderImage.image = UIImage(named: self.holders[0])
        }
    }
    
    private func animStart(txt: String, newImage: String, newHolderImage: String){
        
        
        let down: CGFloat = 120
        let up: CGFloat = -40
        
        firstImage.image = UIImage(named: newImage)
        
        holderImage.isHidden = true
        
        secondShadow.isHidden = true
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
            
            self.firstImage.transform = CGAffineTransform(translationX: 0, y: down)
            
        }) { (what) in
            //
            print("Out put is \(what)" )
            
            self.holderImage.image = UIImage(named: newHolderImage)
            self.holderImage.isHidden = false
            
            self.secondImage.image = UIImage(named: newImage)
            //set it back
            self.firstImage.isHidden = true
            
            UIView.animate(withDuration: 0.1, animations: {
                
                self.firstImage.transform = CGAffineTransform(translationX: 0, y: up)
                
            }) { (what) in
                //
                //set it back
            }
        }
        
        
        
        //**************//
        //same with shadow
        self.firstShadow.isHidden = false
        UIView.animate(withDuration: 1, animations: {
            
            self.firstShadow.transform = CGAffineTransform(translationX: 0, y: down)
            
        }) { (what) in
            //
            
            self.firstShadow.isHidden = true
            
            UIView.animate(withDuration: 0.1, animations: {
                
                self.firstShadow.transform = CGAffineTransform(translationX: 0, y: up)
                
            }) { (what) in
                //
                //set it back
            }
        }

        
        self.firstLabel.isHidden = false
        self.firstLabel.text = txt
        UIView.animate(withDuration: 1, animations: {
            
            self.firstLabel.transform = CGAffineTransform(translationX: 0, y: down)
            
        }) { (what) in
            //
            
            self.firstLabel.isHidden = true
            self.secondLabel.text = txt
            UIView.animate(withDuration: 0.1, animations: {
                
                self.firstLabel.transform = CGAffineTransform(translationX: 0, y: up)
                
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
        
        secondShadow.isHidden = true
        middleImage.isHidden = true
        firstShadow.isHidden = true
        
        
        middleLabel.isHidden = true
        bottomLabel.isHidden = true
        firstLabel.isHidden = true
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture(gesture:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.mainView.addGestureRecognizer(swipeRight)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture(gesture:)))
        swipeDown.direction = UISwipeGestureRecognizerDirection.left
        self.mainView.addGestureRecognizer(swipeDown)
        
    }
    
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                i-=1
                print("Swiped right")
            case UISwipeGestureRecognizerDirection.down:
                print("Swiped down")
            case UISwipeGestureRecognizerDirection.left:
                i+=1
                print("Swiped left")
            case UISwipeGestureRecognizerDirection.up:
                print("Swiped up")
            default:
                break
            }
            
            
            if(i<0){
                i=0
            }
            
            if(i>3){
                i=3
            }
            
            
            middleLabel.isHidden = true
            bottomLabel.isHidden = true
            firstLabel.isHidden = true
            secondShadow.isHidden = true
            middleImage.isHidden = true
            firstShadow.isHidden = true

            secondLabel.isHidden = false
            
            self.pageControl.currentPage = i
            
            if(i==0){
                //first
                firstTime()
                return
            }
            
            if(i==3){
                //last
                lastTime()
                return
            }
            
            
            animStart(txt: texts[i], newImage: firstImgs[i], newHolderImage: holders[i])
            
        }
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

