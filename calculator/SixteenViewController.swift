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
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var processLabel: UILabel!
    
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

//        bannerView1.adUnitID = "ca-app-pub-6004781963877348/5441241513"
//        bannerView1.rootViewController = self
//        bannerView1.load(GADRequest())
//        
//        bannerView2.adUnitID = "ca-app-pub-6004781963877348/4234248851"
//        bannerView2.rootViewController = self
//        bannerView2.load(GADRequest())
        
    }
    
    @IBAction func fifteen(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "f"
            }else {
                resultLabel.text! += "f"
            }
        }else{
            resultLabel.text! = "f"
            mode = true
        }
    }
    
    @IBAction func fourteen(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "e"
            }else {
                resultLabel.text! += "e"
            }
        }else{
            resultLabel.text! = "e"
            mode = true
        }
    }
    
    @IBAction func threeteen(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "d"
            }else {
                resultLabel.text! += "d"
            }
        }else{
            resultLabel.text! = "d"
            mode = true
        }
    }
    
    @IBAction func twelve(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "c"
            }else {
                resultLabel.text! += "c"
            }
        }else{
            resultLabel.text! = "c"
            mode = true
        }
    }
    
    @IBAction func eleven(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "b"
            }else {
                resultLabel.text! += "b"
            }
        }else{
            resultLabel.text! = "b"
            mode = true
        }
    }
    
    @IBAction func ten(_ sender: Any) {
        if mode {
            if resultLabel.text == "0" {
                resultLabel.text = "a"
            }else {
                resultLabel.text! += "a"
            }
        }else{
            resultLabel.text! = "a"
            mode = true
        }
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
    
    func tenToSixteen(number:Int) -> String{
        let result = String(number, radix: 16)
        return String(result)
    }
    
    func sixteenToTen(number:String) -> String{
        let result = (Int(number, radix: 16))!
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
        
        result = sixteenToTen(number: resultLabel.text!)
        print(result)
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
        resultNumber = tenToSixteen(number: firstInteger)
        resultLabel.text = resultNumber
        
    }

    
    @IBAction func change(_ sender: Any) {
        let change = storyboard?.instantiateViewController(withIdentifier: "Change10") as! Change10ViewController
        change.sumString = resultLabel.text!
        change.version = "16"
        present(change,animated: true,completion: nil)
    }
 
}
