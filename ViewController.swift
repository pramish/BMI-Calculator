//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Pramish Luitel on 11/3/19.
//  Copyright © 2019 Pramish Luitel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var weightValues = 0.0
    var heightValues = 0.0
    var totalBMI = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightVlaue: UILabel!
    @IBAction func weightSLider(_ sender: UISlider) {
        weightValues = Double(sender.value)
        heightVlaue.text = String(Int(sender.value))+" cm"
    }
    @IBAction func heightSlider(_ sender: UISlider) {
        heightValues = Double(sender.value)
        weightValue.text = String( Int( sender.value))+" kg"
    }
    
    
    
    @IBAction func calculateResult(_ sender: UIButton) {
        calculateResult()
    }
    
    func calculateResult() {
        totalBMI = heightValues/(sqrt(heightValues))
        switch totalBMI {
        case let totalBMI where totalBMI < 18.5:
            resultLabel.text = "Underweight"
        case let totalBMI where totalBMI>18.5 && totalBMI<25:
            resultLabel.text = "Normal"
        case let totalBMI where totalBMI>=25 && totalBMI<30:
            resultLabel.text = "Overweight"
        case let totalBMI where totalBMI>=30:
            resultLabel.text = "Obese"
        default:
        resultLabel.text = "Please specify weight and height"
        }
//        if totalBMI<18.5{
//            resultLabel.text = "Underweight"
//        }
//        if totalBMI>18.5 && totalBMI<25{
//            resultLabel.text = "Normal"
//        }
//        if totalBMI>=25 && totalBMI<30{
//            resultLabel.text = "Overweight"
//        }
//        if totalBMI>=30{
//            resultLabel.text = "Obese"
//        }
    }
    

}

