//
//  ViewController.swift
//  SalesTaxCalculator
//
//  Created by Ryan Grunest on 9/24/21.
//

import UIKit

class ViewController: UIViewController {
    var beforeTaxPrice: Float = 0;
    var salesTaxRate: Float = 3;
    @IBOutlet weak var calculatedTaxPrice: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    func updateValuesFromComponent(component: UITextField) -> Float {
        if let value = Float(component.text!) {
            return value
        } else {
            return 0
        }
    }
    
    func calculateTax() -> Void {
        let taxPercentage = 1 + (salesTaxRate / 100);
        let taxIncludedPrice = beforeTaxPrice * taxPercentage;
        
        calculatedTaxPrice.text = String(describing: taxIncludedPrice);
    }

    @IBAction func beforeTaxPriceChange(_ sender: UITextField) {
        beforeTaxPrice = updateValuesFromComponent(component: sender)
        calculateTax()
    }
    @IBAction func salesTaxRateChanged(_ sender: UITextField) {
        salesTaxRate = updateValuesFromComponent(component: sender)
        calculateTax()
    }
}

