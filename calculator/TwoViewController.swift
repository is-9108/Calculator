//
//  TwoViewController.swift
//  calculator
//
//  Created by Shota Ishii on 2020/04/11.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit
import GoogleMobileAds

class TwoViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var bannerView1: GADBannerView!
    
    @IBOutlet weak var bannerView2: GADBannerView!
    
    
    var sum1 = 0
    
    var sum2 = 0
    
    var sum3 = 0
    
    var suma = 0
    var sumb = 0
    var sumc = 0
    
    var cal = ""
    
    var start = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        bannerView1.adUnitID = "ca-app-pub-6004781963877348/8397689293"
//        bannerView1.rootViewController = self
//        bannerView1.load(GADRequest())
//        
//        bannerView2.adUnitID = "ca-app-pub-6004781963877348/4761503090"
//        bannerView2.rootViewController = self
//        bannerView2.load(GADRequest())
        
    }
    
    @IBAction func zero(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "0"
        start = true
    }
    
    @IBAction func one(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "1"
        start = true
    }
    
//    @IBAction func point(_ sender: Any) {
//        label.text! += "."
//        start = true
//    }
    
    func twoToTen1(int:Int){
        var base = 1
        var int = int
        while(int > 0){
            suma = suma + (int % 10) * base
            int = int / 10
            base = base * 2
        }
    }
    func twoToTen2(int:Int){
        var base = 1
        var int = int
        while(int > 0){
            sumb = sumb + (int % 10) * base
            int = int / 10
            base = base * 2
        }
    }
    func tenToTwo(int:Int){
        var base = 1
        var int = int
        while(int > 0){
            sumc = sumc + (int % 2) * base
            int = int / 2
            base = base * 10
        }
    }
    
    @IBAction func equal(_ sender: Any) {
        twoToTen1(int: sum1)
        twoToTen2(int: Int(label.text!)!)
        if cal == "plus"{
            sum2 = suma + sumb
            tenToTwo(int: sum2)
        }else if cal == "minus"{
            sum2 = suma - sumb
            tenToTwo(int: sum2)
        }else if cal == "mul"{
            sum2 = suma * sumb
            tenToTwo(int: sum2)
        }else if cal == "div"{
            sum2 = suma / sumb
            tenToTwo(int: sum2)
        }else{
            label.text = "\(sum1)"
        }
        label.text = "\(sumc)"
    }
    
    @IBAction func plus(_ sender: Any) {
        cal = "plus"
        sum1 += Int(label.text!)!
        label.text = "0"
        start = false
    }
    
    @IBAction func minus(_ sender: Any) {
        cal = "minus"
        sum1 += Int(label.text!)!
        label.text = "0"
        start = false
    }
    
    @IBAction func mul(_ sender: Any) {
        cal = "mul"
        sum1 += Int(label.text!)!
        label.text = "0"
        start = false
    }
    
    @IBAction func div(_ sender: Any) {
        cal = "div"
        sum1 += Int(label.text!)!
        label.text = "0"
        start = false
    }
    
    @IBAction func cancel(_ sender: Any) {
        sum1 = 0
        sum2 = 0
        suma = 0
        sumb = 0
        sumc = 0
        label.text = "0"
        start = false
    }

    @IBAction func change(_ sender: Any) {
        let change = storyboard?.instantiateViewController(withIdentifier: "Change10") as! Change10ViewController
        change.sumString = label.text!
        change.version = "2"
        present(change,animated: true,completion: nil)
    }

}
