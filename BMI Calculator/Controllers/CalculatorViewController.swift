//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        if(sender == sliderHeight){
            lblHeight.text = String(format: "%.2fm", sender.value)
            
        }else if(sender == sliderWeight){
            lblWeight.text = String(format: "%.0fKg", sender.value)
        }
    }
    
    
    @IBAction func clickCalculate(_ sender: UIButton) {
        let height = sliderHeight.value
        let weight = sliderWeight.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "toResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
            case "toResult":
                let resultViewController = segue.destination as! ResultViewController
                resultViewController.result = calculatorBrain.getBMIValue()
                resultViewController.advice = calculatorBrain.getBMIAdvice()
                resultViewController.color = calculatorBrain.getBMIColor()
            default:
                break
        }
    }
    
    
    
}

