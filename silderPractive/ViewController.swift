//
//  ViewController.swift
//  silderPractive
//
//  Created by 王衍智 on 2023/1/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var seadraView: UIImageView!
    @IBOutlet weak var growlitheView: UIImageView!
    @IBOutlet weak var sealitheView: UIImageView!
    @IBOutlet weak var ballView1: UIImageView!
    @IBOutlet weak var ballView2: UIImageView!
    func updateLocation(degress: CGFloat){
        ballView1.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi / 90 * degress)
        ballView2.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi / 90 * degress)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        sealitheView.alpha = 0
        // Do any additional setup after loading the view.
    }

    @IBAction func ballSilder(_ sender: UISlider) {
        seadraView.frame.origin.x = CGFloat(125+sender.value)
        growlitheView.frame.origin.x = CGFloat(575-sender.value)
        seadraView.alpha = CGFloat(sender.value / 80)
        growlitheView.alpha = CGFloat(sender.value / 80)
        updateLocation(degress: CGFloat(sender.value))
        if sender.value == 180{
            seadraView.alpha = 0
            growlitheView.alpha = 0
            sealitheView.alpha = 1
        }else{
            sealitheView.alpha = 0
        }
    }
    
}

