//
//  ViewController.swift
//  prework
//
//  Created by Amish Fakun on 8/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text field input
                let bill  = Double(billAmountTextField.text!) ?? 0
                
                //Get total tip by multiplying percentages
                let tipPercentages = [0.15, 0.18, 0.2]
                let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
                let total = bill + tip
                
                //update amount on label
                tipAmountLabel.text = String(format: "$%.2f", tip)
                //update total amount
                totalLabel.text = String(format: "$%.2f", total)
    }
    
}

