//
//  Lab2VC.swift
//  MyMidterm
//
//  Created by user238229 on 3/3/24.
//


import UIKit

class Lab3VC: UIViewController {

    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    
    @IBOutlet weak var Text4: UITextField!
    
    
    @IBOutlet weak var text5: UITextView!
    
    @IBOutlet weak var text6: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addbuttontapped(_ sender: Any) {
        let firstname = text1.text
        let lastname = text2.text
        let country = text3.text
        let age = Text4.text
        text5.text = "\(firstname ?? "") \(lastname ?? "")\n \(country ?? "")\n \(age ?? "")"
        
    }
    
    @IBAction func submitbuttontapped(_ sender: Any) {
        guard let firstName = text1.text, !firstName.isEmpty,
                      let lastName = text2.text, !lastName.isEmpty,
                      let country = text3.text, !country.isEmpty,
                      let age = Text4.text, !age.isEmpty else {
                    text6.text = "Complete the missing Info!"
                    text6.isHidden = false
                    return
                }
                
                text6.text = "Successfully submitted!"
                text6.isHidden = false
        
        
    }
    
    @IBAction func clearbuttontapped(_ sender: Any) {
        text1.text = ""
                text2.text = ""
                text3.text = ""
                Text4.text = ""
                text5.text = ""
                text5.isHidden = true
    }
    
    
    
    
}



