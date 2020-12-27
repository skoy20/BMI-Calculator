//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Daffa Farras Fauzan on 27/12/20.
// 
//

import Foundation

struct CalculatorBrain {
   
    
    func calculateBMI(height:Float,weight:Float) -> BMI{
        
        let bmiVal = weight / (height * height)
        let formatedBMI = String(format: "%.1f", bmiVal)
        
        if bmiVal < 16{
            return BMI(bmi: formatedBMI, category: "UNDERWEIGHT", advice: "SEVERE THINNESS", color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        } else if 16..<17.00 ~= bmiVal{
            return BMI(bmi: formatedBMI, category: "UNDERWEIGHT", advice: "MODERATE THINNESS", color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        } else if 17..<18.50 ~= bmiVal{
            return BMI(bmi: formatedBMI, category: "UNDERWEIGHT", advice: "MILD THINNESS", color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        } else if 18.50..<25 ~= bmiVal{
            return BMI(bmi: formatedBMI, category: "NORMAL", advice: "IDEAL BMI", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else if 25..<30 ~= bmiVal{
            return BMI(bmi: formatedBMI, category: "OVERWEIGHT", advice: "PRE-OBESE", color: #colorLiteral(red: 0.8631440997, green: 0.6571881175, blue: 0, alpha: 1))
        } else if 30..<35 ~= bmiVal{
            return BMI(bmi: formatedBMI, category: "OBESE", advice: "CLASS I (LOW-RISK) OBESITY", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        } else if 35..<40 ~= bmiVal{
            return BMI(bmi: formatedBMI, category: "OBESE", advice: "CLASS II (MODERATE-RISK) OBESITY", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        } else if bmiVal >= 40{
            return BMI(bmi: formatedBMI, category: "OBESE", advice: "CLASS III (HIGH-RISK) OBESITY", color: #colorLiteral(red: 0.9712695479, green: 0, blue: 0, alpha: 1))
        } else {
            return BMI(bmi: "", category: "", advice: "", color: .black)
        }
        
    }
    
    
    
}
