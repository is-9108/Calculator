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
    
    @IBOutlet weak var binaryLabel: UILabel!
    
    @IBOutlet weak var octalLabel: UILabel!
    
    @IBOutlet weak var decimalLabel: UILabel!
    
    @IBOutlet weak var hexadecimalLabel: UILabel!
    
    @IBOutlet weak var bannerView1: GADBannerView!
    
    @IBOutlet weak var bannerView2: GADBannerView!

    var version = ""
    
    var sumString = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        bannerView1.adUnitID = "ca-app-pub-6004781963877348/7300036522"
//        bannerView1.rootViewController = self
//        bannerView1.load(GADRequest())
//        
//        bannerView2.adUnitID = "ca-app-pub-6004781963877348/2431934795"
//        bannerView2.rootViewController = self
//        bannerView2.load(GADRequest())
        print("aaaa\(sumString)")
        getDecimal()
        
    }
    
    func getDecimal(){
        
        switch version{
        case "2":
            let decimal = twoToTen(number: sumString)
            binaryLabel.text = sumString
            octalLabel.text = tenToEight(number: decimal)
            decimalLabel.text = String(decimal)
            hexadecimalLabel.text = tenToSixteen(number: decimal)
        case "8":
            let decimal = eightToTen(number: sumString)
            binaryLabel.text = tenToTwo(number: decimal)
            octalLabel.text = sumString
            decimalLabel.text = String(decimal)
            hexadecimalLabel.text = tenToSixteen(number: decimal)
        case "10":
            binaryLabel.text = tenToTwo(number: Int(sumString)!)
            octalLabel.text = tenToEight(number: Int(sumString)!)
            decimalLabel.text = sumString
            hexadecimalLabel.text = tenToSixteen(number: Int(sumString)!)
        case "16":
            let decimal = sixteenToTen(number: sumString)
            binaryLabel.text = tenToTwo(number: decimal)
            octalLabel.text = tenToEight(number: decimal)
            decimalLabel.text = String(decimal)
            hexadecimalLabel.text = sumString
        default:
            print("errer")
        }
    }
    
    func twoToTen(number:String) -> Int{
        var decimal = Int(number)!
        var base = 1
        var result = 0
        while(decimal > 0){
            result = result + (decimal % 10) * base
            decimal /= 10
            base *= 2
        }
        return result
    }
    
    func eightToTen(number:String) -> Int{
        var octal = Int(number)!
        var base = 1
        var result = 0
        while(octal > 0){
            result = result + (octal % 10) * base
            octal /= 10
            base *= 8
        }
        return result
    }
    
    func sixteenToTen(number:String) -> Int{
        let result = (Int(number, radix: 16))!
        return result
    }
    
    
    func tenToTwo(number:Int) -> String{
        var binary = Int(number)
        var base = 1
        var result = 0
        while(binary > 0){
            result = result + (binary % 2) * base
            binary /= 2
            base *= 10
        }
        return String(result)
    }
    
    func tenToEight(number:Int) -> String{
        var binary = Int(number)
        var base = 1
        var result = 0
        while(binary > 0){
            result = result + (binary % 8) * base
            binary /= 8
            base *= 10
        }
        return String(result)
    }
    
    func tenToSixteen(number:Int) -> String{
        let result = String(number, radix: 16)
        return String(result)
    }
    
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
