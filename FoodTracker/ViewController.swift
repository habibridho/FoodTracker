//
//  ViewController.swift
//  FoodTracker
//
//  Created by Habib Ridho on 9/19/17.
//  Copyright © 2017 Habib Ridho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  // MARK: Properties
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var mealNameLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    nameTextField.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: UITextViewDelegate
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    mealNameLabel.text = nameTextField.text
  }
  
  
  // MARK: Actions
  @IBAction func setDefaultLabelText(_ sender: UIButton) {
    mealNameLabel.text = "Default Text"
  }
  


}

