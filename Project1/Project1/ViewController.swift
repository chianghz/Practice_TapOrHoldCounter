//
//  ViewController.swift
//  Project1
//
//  Created by Kevin Chiang on 2018/3/21.
//  Copyright © 2018年 KevinChiangHz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter:Int = 0
    
    @IBOutlet weak var lblNumber: UILabel!
    
    // Touch_Up_Inside event , also can use Tap_Gesture_Recognizer
    @IBAction func tapped(_ sender: Any) {
        counter += 1
        lblNumber.text = String(counter)
    }
    
    // Long_Press_Gesture_Recognizer
    @IBAction func longPressed(_ sender: UILongPressGestureRecognizer) {
        counter += 1
        lblNumber.text = String(counter)
    }
    
    @IBAction func btn_Reset_Tapped(_ sender: Any) {
        counter = 0
        lblNumber.text = String(counter)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initLayout()
    }

    // 消除 NavigationBar 下方底線的方法
    func initLayout() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
}

