//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    @IBOutlet var textoIMC: UILabel!
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    
   var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
 
  
    
    

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
       let formattedHeight = String(format: "%.2f", sender.value)
        heightLabel.text = "\(formattedHeight)m"
      
       
      
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        let formattedWeight = String(format: "%.f", sender.value)
        weightLabel.text = "\(formattedWeight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
      
        self.performSegue(withIdentifier: "goToResult", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        
        destinationVC.bmiValue = calculatorBrain.getBMIValue()
        destinationVC.advice = calculatorBrain.getAdvice()
        destinationVC.color = calculatorBrain.getColor()
    }
}

