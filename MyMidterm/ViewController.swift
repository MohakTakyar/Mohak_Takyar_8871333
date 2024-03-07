//
//  ViewController.swift
//  MyMidterm
//
//  Created by user238229 on 3/2/24.
//

import UIKit

class ViewController: UIViewController {
    // here is the code for the part a where we have to get the picture printed when the user input the city name

    @IBOutlet weak var cityImageView: UIImageView!
    
    @IBOutlet weak var cityNotFoundLabel: UILabel!
    @IBOutlet weak var cityNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func findMyCityTapped(_ sender: Any) {
        cityNotFoundLabel.isHidden = true
        guard let cityname = cityNameTextField.text?.lowercased() else { return }
        // here i am using switch case to get the city name get printed and offer choices to the user.
        switch cityname {
        case "calgary":
            cityImageView.image = UIImage(named: "Calgary")
        case "halifax":
            cityImageView.image = UIImage(named: "Halifax")
        case "montreal":
            cityImageView.image = UIImage(named: "Montreal")
        case "toronto":
            cityImageView.image = UIImage(named: "Toronto")
        case "vancouver":
            cityImageView.image = UIImage(named: "Vancouver")
        case "winnipeg":
            cityImageView.image = UIImage(named: "Winnipeg")
        default:
            cityNotFoundLabel.isHidden = false
            cityImageView.image = nil
        }
    }
}
