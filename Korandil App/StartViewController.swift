//
//  StartViewController.swift
//  Korandil App
//
//  Created by abhishek on 3/22/17.
//  Copyright © 2017 abhishek. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class StartViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
   
            
            let moviePath = Bundle.main.path(forResource: "korandil", ofType: "mp4")
            if let path = moviePath {
                let url = NSURL.fileURL(withPath: path)
                //            let player = AVPlayer(url: url)
                //            let playerViewController = AVPlayerViewController()
                //            playerViewController.player = player
                //            self.present(playerViewController, animated: true) {
                //                if let validPlayer = playerViewController.player {
                //                    validPlayer.play()
                //                }
                //            }
                
                let player = AVPlayer(url: url)
                let playerLayer = AVPlayerLayer(player: player)
                playerLayer.frame = self.view.bounds
                
                
                NotificationCenter.default.addObserver(self, selector:#selector(self.abc(note:)),name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player.currentItem)
                
                self.view.layer.addSublayer(playerLayer)
                player.play()
                
        }
        
    }
    
    
    
    func abc(note: NSNotification) {
        print("Video Finished")
        let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "abc") as!
        UITabBarController
        
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(NSNotification.Name.self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
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
