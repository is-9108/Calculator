//
//  EightViewController.swift
//  calculator
//
//  Created by Shota Ishii on 2020/04/11.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit
import GoogleMobileAds

class EightViewController: UIViewController {
    

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var bannerView1: GADBannerView!
    
    @IBOutlet weak var bannerView2: GADBannerView!
    
    @IBOutlet weak var processLabel: UILabel!
    
    //計算
    var firstInteger = 0
    var resultInteger = 0
    var process = ""
    var mode = true
    var ope = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        bannerView1.adUnitID = "ca-app-pub-6004781963877348/5663521226"
//        bannerView1.rootViewController = self
//        bannerView1.load(GADRequest())
//        
//        bannerView2.adUnitID = "ca-app-pub-6004781963877348/9486575532"
//        bannerView2.rootViewController = self
//        bannerView2.load(GADRequest())
        
    }
    
    @IBAction func seven(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "7"
            }else {
                resultLabel.text! += "7"
            }
        }else{
            resultLabel.text! = "7"
            mode = true
        }
    }
    
    @IBAction func six(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "6"
            }else {
                resultLabel.text! += "6"
            }
        }else{
            resultLabel.text! = "6"
            mode = true
        }
    }
    
    @IBAction func five(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "5"
            }else {
                resultLabel.text! += "5"
            }
        }else{
            resultLabel.text! = "5"
            mode = true
        }
    }
    
    @IBAction func four(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "4"
            }else {
                resultLabel.text! += "4"
            }
        }else{
            resultLabel.text! = "4"
            mode = true
        }
    }
    
    @IBAction func three(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "3"
            }else {
                resultLabel.text! += "3"
            }
        }else{
            resultLabel.text! = "3"
            mode = true
        }
    }
    
    @IBAction func two(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "2"
            }else {
                resultLabel.text! += "2"
            }
        }else{
            resultLabel.text! = "2"
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
    
    func eightToTen(number:String) -> String{
        var octal = Int(number)!
        var base = 1
        var result = 0
        while(octal > 0){
            result = result + (octal % 10) * base
            octal /= 10
            base *= 8
        }
        return String(result)
    }
    func tenToEight(number:String) -> String{
        var binary = Int(number)!
        var base = 1
        var result = 0
        while(binary > 0){
            result = result + (binary % 8) * base
            binary /= 8
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
    
    @IBAction func cansel(_ sender: Any) {
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
        
        result = eightToTen(number: resultLabel.text!)
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
        resultNumber = tenToEight(number: String(firstInteger))
        resultLabel.text = resultNumber
        
    }
    
    @IBAction func change(_ sender: Any) {
        let change = storyboard?.instantiateViewController(withIdentifier: "Change10") as! Change10ViewController
        change.sumString = resultLabel.text!
        change.version = "8"
        present(change,animated: true,completion: nil)
    }
    
}
