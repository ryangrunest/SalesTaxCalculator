//
//  ViewController.swift
//  SalesTaxCalculator
//
//  Created by Ryan Grunest on 9/24/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var afterTaxRateComponent: UITextField!
    var beforeTaxPrice: Float = 0
    
    func updateView(input: String) {
        if let value = Float(input) {
            beforeTaxPrice = value
            afterTaxRateComponent.text = String(describing: value)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView(input: "412")
    }

    @IBAction func beforeTaxPriceChange(_ sender: UITextField) {
        updateView(input: sender.text ?? "")
    }
}

