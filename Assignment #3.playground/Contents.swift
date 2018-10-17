
// Created on: 28-Sept-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program calculates the price of pizza

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let sizeLabel = UILabel()
    let toppingsLabel = UILabel()
    let sizeTextField = UITextField()
    let toppingsTextField = UITextField()
    let calcuateButton = UIButton()
    let subtotalLabel = UILabel()
    let HSTLabel = UILabel()
    let finalTotalPriceLabel = UILabel()
    var priceOfSize : Double = 0.0
    var priceOfToppings : Double = 0.0
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Select the size and the number of toppings you would like. We will calculate the price."
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        sizeLabel.text = "Select size"
        sizeLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(sizeLabel)
        sizeLabel.translatesAutoresizingMaskIntoConstraints = false
        sizeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        sizeLabel.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        
        sizeTextField.borderStyle = UITextBorderStyle.roundedRect
        sizeTextField.placeholder = "Large or Extra Large"
        view.addSubview(sizeTextField)
        sizeTextField.translatesAutoresizingMaskIntoConstraints = false
        sizeTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150).isActive = true
        sizeTextField.bottomAnchor.constraint(equalTo: sizeLabel.topAnchor, constant: 27).isActive = true
        
        toppingsLabel.text = "Select # of toppings"
        toppingsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(toppingsLabel)
        toppingsLabel.translatesAutoresizingMaskIntoConstraints = false
        toppingsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        toppingsLabel.topAnchor.constraint(equalTo: sizeLabel.bottomAnchor, constant: 20).isActive = true
        
        toppingsTextField.borderStyle = UITextBorderStyle.roundedRect
        toppingsTextField.placeholder = "1-4 toppings"
        view.addSubview(toppingsTextField)
        toppingsTextField.translatesAutoresizingMaskIntoConstraints = false
        toppingsTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200).isActive = true
        toppingsTextField.bottomAnchor.constraint(equalTo: toppingsLabel.topAnchor, constant: 27).isActive = true
        
        calcuateButton.setTitle("Calculate", for: UIControlState.normal)
        calcuateButton.setTitleColor(.blue, for: .normal)
        calcuateButton.addTarget(self, action: #selector(calculatePrice), for: .touchUpInside)
        view.addSubview(calcuateButton)
        calcuateButton.translatesAutoresizingMaskIntoConstraints = false
        calcuateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        calcuateButton.topAnchor.constraint(equalTo: toppingsLabel.bottomAnchor, constant: 20).isActive = true
        
        subtotalLabel.text = nil
        subtotalLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(subtotalLabel)
        subtotalLabel.translatesAutoresizingMaskIntoConstraints = false
        subtotalLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        subtotalLabel.topAnchor.constraint(equalTo: calcuateButton.bottomAnchor, constant: 20).isActive = true
        
        HSTLabel.text = nil
        HSTLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(HSTLabel)
        HSTLabel.translatesAutoresizingMaskIntoConstraints = false
        HSTLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        HSTLabel.topAnchor.constraint(equalTo: calcuateButton.bottomAnchor, constant: 20).isActive = true
        
        finalTotalPriceLabel.text = nil
        finalTotalPriceLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(finalTotalPriceLabel)
        finalTotalPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        finalTotalPriceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        finalTotalPriceLabel.topAnchor.constraint(equalTo: calcuateButton.bottomAnchor, constant: 20).isActive = true
    }
    @objc func calculatePrice() {
        // calculate the price 
        
        
        let size : String = sizeTextField.text!
        let toppings : Double = Double(toppingsTextField.text!)!
        
        
        if size == "Large" {
            var priceOfSize : Double = 6.00
        }
        else if size == "Extra Large" {
            var priceOfSize : Double = 10.00
        }
        else {
            subtotalLabel.text = "Please pick either Large or Extra Large."
        }
        if toppings == 1 {
            var priceOfToppings : Double = 1.00
        }
        else if toppings == 2{
            var priceOfToppings : Double = 1.75
        }
        else if toppings == 3 {
            var priceOfToppings : Double = 2.50
        }
        else if toppings == 4{
            var priceOfToppings : Double = 3.25
        }
        else{
            HSTLabel.text = "Please pick 1-4 toppings."
        }
        
        
        let price = priceOfSize + priceOfToppings
        
        let HST : Double = price * 0.13
        
        let totalPrice : Double = price + HST
        
        subtotalLabel.text = String("$\(price)")
        HSTLabel.text = String("$\(HST)")
        finalTotalPriceLabel.text = String("$\(totalPrice)")
        
        //priceLabel.text = String(format: "The price is $%.02f", price)
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
