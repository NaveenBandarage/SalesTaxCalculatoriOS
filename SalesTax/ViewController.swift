//
//  ViewController.swift
//  SalesTax
//
//  Created by Naveen Bandarage on 27/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    //these are the fields.
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var salesTaxTxt: UITextField!
    @IBOutlet weak var priceTxt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLabel.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)! //convert this into decimal this ! makes sure that there is text there.
        let salesTax = Double(salesTaxTxt.text!)!
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceLabel.text = "$\(totalPrice)" // converts to a string"
    }
    
}

