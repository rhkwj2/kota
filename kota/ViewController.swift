//
//  ViewController.swift
//  kota
//
//  Created by Kim Yeon Jeong on 2019/12/8.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum CurrencyType: Int {
        case won
        case NTD
    }
    
    var currencyType: CurrencyType = .won
    
    @IBOutlet weak var inputCurrencyValueTextField: UITextField!
    
    //wride down value bu keyboard and show, and keyworkd will be disappear
    @IBOutlet weak var inputCurrencyTypeSegmentedControl: UISegmentedControl!
    
    @IBAction func chooseOneAction(_ sender: UISegmentedControl) {
        
        // User choose 0(korean won) or 1(NTD) then keep the value
        if ( sender.selectedSegmentIndex == 0){
            
        }
        else{
            
        }
    }
    
    @IBOutlet weak var outputCurrencyValueTextField: UITextField!
    //show auto changed value from internet
    
    @IBOutlet weak var outputCurrencyTypeSegmentedControl: UISegmentedControl!
    
    @IBAction func currencyTypeChanged(_ sender: UISegmentedControl) {
        //show auto changed choose value korean won to NTD
        //or NTD to Korean won
        if (sender.selectedSegmentIndex == 0){
            // choose won
            currencyType = .won
            
            inputCurrencyTypeSegmentedControl.selectedSegmentIndex = currencyType.rawValue
            outputCurrencyTypeSegmentedControl.selectedSegmentIndex = 1 - currencyType.rawValue
        }
        else{
            currencyType = .NTD
            
            inputCurrencyTypeSegmentedControl.selectedSegmentIndex = currencyType.rawValue
            outputCurrencyTypeSegmentedControl.selectedSegmentIndex = 1 - currencyType.rawValue
        }
    }
    
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputCurrencyTypeSegmentedControl.selectedSegmentIndex = currencyType.rawValue
        outputCurrencyTypeSegmentedControl.selectedSegmentIndex = 1 - currencyType.rawValue
        
        //dismiss keyboard
    //https://medium.com/@KaushElsewhere/how-to-dismiss-keyboard-in-a-view-controller-of-ios-3b1bfe973ad1
        
    
        let tap = UITapGestureRecognizer(target: inputCurrencyValueTextField, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}
