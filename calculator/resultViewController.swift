//
//  resultViewController.swift
//  calculator
//
//  Created by Shota Ishii on 2020/04/13.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit
import GoogleMobileAds
import RealmSwift

class resultViewController: UIViewController {

    @IBOutlet weak var bannerView1: GADBannerView!
    
    @IBOutlet weak var bannerView2: GADBannerView!
    
    var task:Task!
    
    @IBOutlet weak var number: UILabel!
    
    @IBOutlet weak var memo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        bannerView1.adUnitID = "ca-app-pub-6004781963877348/6768681346"
//        bannerView1.rootViewController = self
//        bannerView1.load(GADRequest())
//        
//        bannerView2.adUnitID = "ca-app-pub-6004781963877348/7507047942"
//        bannerView2.rootViewController = self
//        bannerView2.load(GADRequest())

        number.text = task.number
        memo.text = task.memo
        
    }
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
