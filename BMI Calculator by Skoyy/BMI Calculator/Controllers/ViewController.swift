//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Daffa Farras Fauzan on 25/12/2020.
//  
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiVal:BMI?
    var cal = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 1.5
        weightSlider.value = 100.0
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(Int(sender.value*100))+" cm"
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value))+" Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        
        bmiVal = cal.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "toResultScreen", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultScreen"{
            let destinationVC = segue.destination as! ResultScreenController
            destinationVC.bmiVal = bmiVal?.bmi ?? "0"
            destinationVC.category = bmiVal?.category ?? ""
            destinationVC.advice = bmiVal?.advice ?? ""
            destinationVC.color = bmiVal?.color ?? .black
            
        }
    }
}

