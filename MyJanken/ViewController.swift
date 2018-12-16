//
//  ViewController.swift
//  MyJanken
//
//  Created by goki sakuraba on 2018/12/13.
//  Copyright © 2018年 goki sakuraba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var answerNumber = 0
    

    @IBOutlet weak var answerImageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBAction func shuffleAction(_ sender: Any) {
        // arc4random_uniform()の戻り値は、UInt32。
        // Int型じゃないからキャストしてInt型に変更。
        answerNumber = Int(arc4random_uniform(3))
        if answerNumber == 0 {
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
        } else if answerNumber == 1 {
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
        } else if answerNumber == 2 {
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
        }
    }

}

