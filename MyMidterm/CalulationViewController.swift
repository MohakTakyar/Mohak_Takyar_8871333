//
//  CalulationViewController.swift
//  MyMidterm
//
//  Created by user238229 on 3/3/24.
//
import UIKit

class CalulationViewController: UIViewController {

    @IBOutlet weak var cValueTextField: UITextField!
    @IBOutlet weak var bValueTextField: UITextField!
    @IBOutlet weak var aValueTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateTapped(_ sender: Any) {
        //here i am getting the values by the user and linking the textfiels to get the user input
        guard let aText = aValueTextField.text,
              let a = Double(aText), a != 0 else {
            displayError(message: "The value you entered for A is invalid.Please enter a valid value")
            return
        }
        // here i am getting the user input in b text field
        guard let bText = bValueTextField.text,
              let b = Double(bText) else {
            displayError(message: "The value you entered for B is invalid.Please enter a valid value")
            return
        }
        // here i am getting the user input for the c text field
        guard let cText = cValueTextField.text,
              let c = Double(cText) else {
            displayError(message: "The value you entered for C is invalid.Please enter a valid value")
            return
        }
        //here i am using else if to get the functionality done
        let discriminante = (b * b) - (4 * a * c)
        
        if discriminante < 0 {
            displayError(message: "There are no results since the discriminant is less than zero.")
        } else if discriminante == 0 {
            let x = -b / (2 * a)
            answerLabel.text = "There is only one value for X: \(x)"
            answerLabel.isHidden = false
        } else {
            let x1 = (-b + sqrt(discriminante)) / (2 * a)
            let x2 = (-b - sqrt(discriminante)) / (2 * a)
            answerLabel.text = "There are two values for X: \(x1) and \(x2)"
            answerLabel.isHidden = false
            answerLabel.textColor = .black
        }
    }
    
    func displayError(message: String) {
        answerLabel.text = message
        answerLabel.isHidden = false
        answerLabel.textColor = .red
    }
    // here i am giving code for clear button 
    
    @IBAction func clearTapped(_ sender: Any) {
        aValueTextField.text = ""
        bValueTextField.text = ""
        cValueTextField.text = ""
        answerLabel.isHidden = true
        
    }
    
}

