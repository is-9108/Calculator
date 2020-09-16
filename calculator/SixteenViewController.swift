//
//  SixteenViewController.swift
//  calculator
//
//  Created by Shota Ishii on 2020/04/11.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit
import GoogleMobileAds

class SixteenViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var bannerView1: GADBannerView!
    
    @IBOutlet weak var bannerView2: GADBannerView!
    
    
    var sum1 = ""
    var sum2 = 0
    var sum3 = 0
    
    var suma = 0
    var sumb = 0
    var sumc = ""
    
    var cal = ""
    
    var start = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        bannerView1.adUnitID = "ca-app-pub-6004781963877348/5441241513"
//        bannerView1.rootViewController = self
//        bannerView1.load(GADRequest())
//        
//        bannerView2.adUnitID = "ca-app-pub-6004781963877348/4234248851"
//        bannerView2.rootViewController = self
//        bannerView2.load(GADRequest())
        
    }
    
    @IBAction func fifteen(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "F"
        start = true
    }
    
    @IBAction func fourteen(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "E"
        start = true
    }
    
    @IBAction func threeteen(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "D"
        start = true
    }
    
    @IBAction func twelve(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "C"
        start = true
    }
    
    @IBAction func eleven(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "B"
        start = true
    }
    
    @IBAction func ten(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "A"
        start = true
    }
    
    @IBAction func nine(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "9"
        start = true
    }
    
    @IBAction func eight(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "8"
        start = true
    }
    
    @IBAction func seven(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "7"
        start = true
    }
    
    @IBAction func six(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "6"
        start = true
    }
    
    @IBAction func five(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "5"
        start = true
    }
    
    @IBAction func four(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "4"
        start = true
    }
    
    @IBAction func three(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "3"
        start = true
    }
    
    @IBAction func two(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "2"
        start = true
    }
    
    @IBAction func one(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "1"
        start = true
    }
    
    @IBAction func zero(_ sender: Any) {
        if start == false{
            label.text = ""
        }
        label.text! += "0"
        start = true
    }
    
    
    func sixteenToTen1(string:String){
        suma = Int(string,radix: 16)!
    }
    func sixteenToTen2(string:String){
        sumb = Int(string,radix: 16)!
    }
    
    func tenToSixteen(int:Int){
        sumc = String(int,radix: 16)
    }
    
    @IBAction func equal(_ sender: Any) {
        sixteenToTen1(string: sum1)
        sixteenToTen2(string: label.text!)
        if cal == "plus"{
            sum2 = suma + sumb
            tenToSixteen(int: sum2)
        }else if cal == "minus"{
            sum2 = suma - sumb
            tenToSixteen(int: sum2)
        }else if cal == "mul"{
            sum2 = suma * sumb
            tenToSixteen(int: sum2)
        }else if cal == "div"{
            sum2 = suma / sumb
            tenToSixteen(int: sum2)
        }else{
            label.text = "\(sum1)"
        }
        label.text = "\(sumc)"
    }
    
    @IBAction func plus(_ sender: Any) {
        cal = "plus"
        sum1 = label.text!
        label.text = "0"
        start = false
    }
    
    @IBAction func minus(_ sender: Any) {
        cal = "minus"
        sum1 = label.text!
        label.text = "0"
        start = false
    }
    
    @IBAction func mul(_ sender: Any) {
        cal = "mul"
        sum1 = label.text!
        label.text = "0"
        start = false
    }
    
    @IBAction func div(_ sender: Any) {
        cal = "div"
        sum1 = label.text!
        label.text = "0"
        start = false
    }
    
    @IBAction func cansel(_ sender: Any) {
        sum1 = ""
        sum2 = 0
        suma = 0
        sumb = 0
        sumc = ""
        label.text = "0"
        start = false
    }
    

    
    @IBAction func change(_ sender: Any) {
        let change = storyboard?.instantiateViewController(withIdentifier: "Change10") as! Change10ViewController
        change.sumString = label.text!
        change.version = "16"
        present(change,animated: true,completion: nil)
    }
 
}
