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

    @IBOutlet weak var processLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var bannerView1: GADBannerView!
    
    @IBOutlet weak var bannerView2: GADBannerView!
    
    //計算
    var firstInteger = 0
    var resultInteger = 0
    var process = ""
    var mode = true
    var ope = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        processLabel.text = process
//        bannerView1.adUnitID = "ca-app-pub-6004781963877348/8397689293"
//        bannerView1.rootViewController = self
//        bannerView1.load(GADRequest())
//        
//        bannerView2.adUnitID = "ca-app-pub-6004781963877348/4761503090"
//        bannerView2.rootViewController = self
//        bannerView2.load(GADRequest())
        
    }
    
    @IBAction func zero(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "0"
            }else {
                resultLabel.text! += "0"
            }
        }else{
            resultLabel.text! = "0"
            mode = true
        }
    }
    
    @IBAction func one(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "1"
            }else {
                resultLabel.text! += "1"
            }
        }else{
            resultLabel.text! = "1"
            mode = true
        }
    }
    
    func twoToTen(number:String) -> String{
        var decimal = Int(number)!
        var base = 1
        var result = 0
        while(decimal > 0){
            result = result + (decimal % 10) * base
            decimal /= 10
            base *= 2
        }
        return String(result)
    }
    
    func tenToTwo(number:String) -> String{
        var binary = Int(number)!
        var base = 1
        var result = 0
        while(binary > 0){
            result = result + (binary % 2) * base
            binary /= 2
            base *= 10
        }
        return String(result)
        
    }
    
    @IBAction func equal(_ sender: Any) {
        mode = false
        calculation()
        firstInteger = 0
    }
    
    @IBAction func plus(_ sender: Any) {
        if resultLabel.text != "0"{
            calculation()
        }
        ope = "+"

        mode = false
    }
    
    @IBAction func minus(_ sender: Any) {
        if resultLabel.text != "0"{
            calculation()
        }
        ope = "-"

        mode = false
    }
    
    @IBAction func mul(_ sender: Any) {
        if resultLabel.text != "0"{
            calculation()
        }
        ope = "×"

        mode = false
    }
    
    @IBAction func div(_ sender: Any) {
        if resultLabel.text != "0"{
            calculation()
        }
        ope = "÷"

        mode = false
    }
    
    @IBAction func cancel(_ sender: Any) {
        resultLabel.text = "0"
        firstInteger = 0
        process = ""
        processLabel.text = ""
        ope = ""
        mode = true
    }
    
    func calculation(){
        var result = ""
        var resultNumber = ""
        
        result = twoToTen(number: resultLabel.text!)
        switch ope {
        case "":
            process = resultLabel.text!
            processLabel.text = process
            firstInteger += Int(result)!
        case "+":
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "+\(resultLabel.text!)"
            }
            processLabel.text = process
            firstInteger += Int(result)!
        case "-":
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "-\(resultLabel.text!)"
            }
            processLabel.text = process
            mode = false
            firstInteger -= Int(result)!
        case "×":
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "×\(resultLabel.text!)"
            }
            processLabel.text = process
            mode = false
            firstInteger *= Int(result)!
        case "÷":
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "÷\(resultLabel.text!)"
            }
            processLabel.text = process
            mode = false
            firstInteger /= Int(result)!
        default:
            print("演算子でのエラー")
        }
        resultNumber = tenToTwo(number: String(firstInteger))
        resultLabel.text = resultNumber
        
    }

    @IBAction func change(_ sender: Any) {
        let change = storyboard?.instantiateViewController(withIdentifier: "Change10") as! Change10ViewController
        change.sumString = resultLabel.text!
        change.version = "2"
        present(change,animated: true,completion: nil)
    }

}
