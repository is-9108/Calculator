//
//  TenViewController.swift
//  calculator
//
//  Created by Shota Ishii on 2020/04/11.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit
import GoogleMobileAds

class TenViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var processLabel: UILabel!
    
    @IBOutlet weak var bannerView1: GADBannerView!
    
    @IBOutlet weak var bannerView2: GADBannerView!
    
    //計算
    var firstDouble = 0.0
    var resultDouble = 0.0
    var process = ""
    var mode = true
    var ope = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        bannerView1.adUnitID = "ca-app-pub-6004781963877348/2845786190"
//        bannerView1.rootViewController = self
//        bannerView1.load(GADRequest())
//        
//        bannerView2.adUnitID = "ca-app-pub-6004781963877348/1532704520"
//        bannerView2.rootViewController = self
//        bannerView2.load(GADRequest())

        
    }
    
    @IBAction func nine(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "9"
            }else {
                resultLabel.text! += "9"
            }
        }else{
            resultLabel.text! = "9"
            mode = true
        }
    }
    
    @IBAction func eight(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "8"
            }else {
                resultLabel.text! += "8"
            }
        }else{
            resultLabel.text! = "8"
            mode = true
        }
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
    
    @IBAction func point(_ sender: Any) {
        resultLabel.text! += "."
    }
    
    
    @IBAction func equal(_ sender: Any) {
        mode = false
        calculation()
        firstDouble = 0.0
        
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
        firstDouble = 0.0
        process = ""
        processLabel.text = ""
        ope = ""
        mode = true
    }
    
    
    @IBAction func change(_ sender: Any) {
        let change = storyboard?.instantiateViewController(withIdentifier: "Change10") as! Change10ViewController
        change.sumString = resultLabel.text!
        change.version = "10"
        present(change,animated: true,completion: nil)
    }
    
    func calculation(){
        var result = ""
        var resultNumber = ""
        
        result = resultLabel.text!
        print(result)
        switch ope {
        case "":
            process = resultLabel.text!
            processLabel.text = process
            firstDouble += Double(result)!
        case "+":
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "+\(resultLabel.text!)"
            }
            processLabel.text = process
            firstDouble += Double(result)!
        case "-":
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "-\(resultLabel.text!)"
            }
            processLabel.text = process
            mode = false
            firstDouble -= Double(result)!
        case "×":
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "×\(resultLabel.text!)"
            }
            processLabel.text = process
            mode = false
            firstDouble *= Double(result)!
        case "÷":
            if resultLabel.text == "0"{
                process += resultLabel.text!
            }else{
                process += "÷\(resultLabel.text!)"
            }
            processLabel.text = process
            mode = false
            firstDouble /= Double(result)!
        default:
            print("演算子でのエラー")
        }
        resultNumber = String(firstDouble)
        resultLabel.text = resultNumber
        
    }
    
}
