//
//  ViewController.swift
//  Tute1
//
//  Created by Devon Wijesinghe on 1/30/20.
//  Copyright © 2020 Devon Wijesinghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLbl: UILabel!
    @IBOutlet weak var greenLbl: UILabel!
    @IBOutlet weak var blueLbl: UILabel!
    @IBOutlet weak var colorBox: UIView!
    
    var red : CGFloat = 128
    var green : CGFloat = 128
    var blue : CGFloat = 128
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func slider(_ sender: UISlider) {
        let currentValue = CGFloat(sender.value)
        
        switch sender.tag {
            case 0:
                red = currentValue
                redLbl.text = "\(Int(currentValue))"
                break
            case 1:
                green = currentValue
                greenLbl.text = "\(Int(currentValue))"
                break
            case 2:
                blue = currentValue
                blueLbl.text = "\(Int(currentValue))"
                break
            default:
                break
        }
        changeColor()
    }
    
    func changeColor() {
        colorBox.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    }
}
