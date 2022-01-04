//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Maximiliano Ituarte on 03/01/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String? 
    var advice : String?
    var color: UIColor? 
    
    @IBOutlet var bmiLabel: UILabel!
    
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      bmiResult()
        
    }
    
    func bmiResult() {
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
   

    
    @IBAction func recalculatedPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
