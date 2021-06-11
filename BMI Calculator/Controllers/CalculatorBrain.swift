//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Andrii Nepodymka on 6/11/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
        
    }
    
    
    
    mutating func calculateBMI(height: Float, weight: Float ) {
        
        let  bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9  {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
        
        
        
        
        
    }
    
    func getColor() -> UIColor {
         
        return bmi?.color ??  UIColor.white
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
}
