//
//  ViewController.swift
//  introduceStudent
//
//  Created by biubiubiu on 2023/1/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var petsNumberLabel: UILabel!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        petsNumberLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(petsNumberLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you.", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

