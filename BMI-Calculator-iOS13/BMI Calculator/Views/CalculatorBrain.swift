//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Lilian De Oliveira Silva on 15/04/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
            
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace

    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "No advice"
        
    }
    
    func getColor() -> UIColor {
        
        return bmi?.color ?? UIColor.white
        
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            
            print("Underweight")
            bmi = BMI(value: bmiValue, advice: "Underweight. Eat more pies!", color: UIColor.blue )

        } else if bmiValue < 24.9 {
            
            print("Normal weight")
            bmi = BMI(value: bmiValue, advice: "Normal weight. Fit as a fiddle!", color: UIColor.green)

        } else {
            
            print("Overweight")
            bmi = BMI(value: bmiValue, advice: "Overweight. Eat less pies!", color: UIColor.red)

        }
            
    }
}
