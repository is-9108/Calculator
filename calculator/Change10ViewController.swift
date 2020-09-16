//
//  Change10ViewController.swift
//  calculator
//
//  Created by Shota Ishii on 2020/04/11.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Change10ViewController: UIViewController {
    
    @IBOutlet weak var two: UILabel!
    
    @IBOutlet weak var eight: UILabel!
    
    @IBOutlet weak var ten: UILabel!
    
    @IBOutlet weak var sixteen: UILabel!
    
    @IBOutlet weak var bannerView1: GADBannerView!
    
    @IBOutlet weak var bannerView2: GADBannerView!
    
    var Two = ""
    var Eight = ""
    var Sixteen = ""
    var sixteenString = ""

    var version = ""
    
    var sumString = ""
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        bannerView1.adUnitID = "ca-app-pub-6004781963877348/7300036522"
//        bannerView1.rootViewController = self
//        bannerView1.load(GADRequest())
//        
//        bannerView2.adUnitID = "ca-app-pub-6004781963877348/2431934795"
//        bannerView2.rootViewController = self
//        bannerView2.load(GADRequest())
        
        get10(string: version)
        
    }
    
    func get10(string:String){
        if string == "2"{
            twoToTen(string: sumString)
        }else if string == "8"{
            eightToTen(string: sumString)
        }else if string == "10"{
            result = Int(sumString)!
            tenToTwo(int: result)
            two.text = "\(Two)"
            tenToEight(int: result)
            eight.text = "\(Eight)"
            ten.text = sumString
            tenToSixteen(int: result)
            sixteen.text = "\(sixteenString)"
        }else if string == "16"{
            sixteenToTen(string: sumString)
        }
    }
    
    func twoToTen(string:String){
        var sum = Int(string)!
        var base = 1
        while(sum > 0){
            result = result + (sum % 10) * base
            sum = sum / 10
            base = base * 2
        }
        tenToTwo(int: result)
        two.text = "\(Two)"
        tenToEight(int: result)
        eight.text = "\(Eight)"
        ten.text = "\(result)"
        tenToSixteen(int: result)
        sixteen.text = "\(sixteenString)"
    }
    
    func eightToTen(string:String){
        var sum = Int(string)!
        var base = 1
        while(sum > 0){
            result = result + (sum % 10) * base
            sum = sum / 10
            base = base * 8
        }
        tenToTwo(int: result)
        two.text = "\(Two)"
        tenToEight(int: result)
        eight.text = "\(Eight)"
        ten.text = "\(result)"
        tenToSixteen(int: result)
        sixteen.text = "\(sixteenString)"
    }
    
    func sixteenToTen(string:String){
        var sum = Int(string)!
        var base = 1
        while(sum > 0){
            result = result + (sum % 10) * base
            sum = sum / 10
            base = base * 16
        }
        tenToTwo(int: result)
        two.text = "\(Two)"
        tenToEight(int: result)
        eight.text = "\(Eight)"
        ten.text = "\(result)"
        tenToSixteen(int: result)
        sixteen.text = "\(sixteenString)"
    }
    
    func tenToTwo(int:Int){
        let sum = int
        Two = String(sum,radix: 2)
    }
    
    func tenToEight(int:Int){
        let sum = int
        Eight = String(sum,radix: 8)
    }
    
    func tenToSixteen(int:Int){
        let sum = int
        sixteenString = String(sum,radix: 16)
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
