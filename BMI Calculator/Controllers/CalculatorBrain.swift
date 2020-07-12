//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by João Pedro Giarrante on 12/07/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height:Float, weight:Float) {
        let bmiValue = weight/(pow(height, 2))
        var bmiAdvice: String?
        var bmiColor: UIColor?
        
        if bmiValue < 18.5 {
            bmiAdvice = "Eat more pies!"
            bmiColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        } else if bmiValue < 24.9 {
            bmiAdvice = "Fit as a fiddle!"
            bmiColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        } else {
            bmiAdvice = "Eat less pies!"
            bmiColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: bmiAdvice!, color: bmiColor!)
    }
    
    func getBMIValue() -> Float {
        return bmi?.value ?? 0.0
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
}
