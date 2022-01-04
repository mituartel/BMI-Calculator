//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Maximiliano Ituarte on 03/01/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    
    
    var bmiValue: BMI?
    
    func getBMIValue() -> String {
           
            let bmiFormatted = String(format: "%.2f", bmiValue?.value ?? 0.0)
            return bmiFormatted
       
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValueResult = weight / (height * height)
        
        if bmiValueResult <= 18.05 {
            bmiValue = BMI(value: bmiValueResult, advice: "Te hace falta un guiso", color: UIColor.blue)
            
        }
        else if bmiValueResult <= 24.90 {
            bmiValue = BMI(value: bmiValueResult, advice: "Estas bien!", color: UIColor.green )
            
        }
        else {
            bmiValue = BMI(value: bmiValueResult, advice: "Cuando estas lleno es mas rico", color: UIColor.red)}
        
    }
    
    func getAdvice() -> String {
        
        return bmiValue?.advice ?? "No hay consejito"
        
    }
    
    func getColor() -> UIColor {
        
        return bmiValue?.color ?? UIColor.white
        
    }

  
}
