//
//  ResultScreenController.swift
//  BMI Calculator
//
//  Created by Daffa Farras Fauzan on 27/12/20.
// 
//

import UIKit

class ResultScreenController: UIViewController {
    
    
    
    @IBOutlet weak var backgroundColor: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var mainCatLabel: UILabel!
    
    var bmiVal:String?
    var category:String?
    var advice:String?
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiVal
        mainCatLabel.text = category
        categoryLabel.text = advice
        backgroundColor.backgroundColor = color
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
