//
//  ViewController.swift
//  primeNumber
//
//  Created by MDREZAUL KARIM on 4/7/17.
//  Copyright © 2017 Verizon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var numberField: UITextField!
    
    @IBAction func PrimeBtn(_ sender: Any) {
        
        if let userEnteredNumber = numberField.text {
            
            
            let EnteredNumber = Int(userEnteredNumber)
            
            
            if let number = EnteredNumber {
                
                if number < 1 {
                    
                     resultLbl.text = "Please enter number greater than 0"
                } else {
                   var isPrime = true
                    if number == 1  {
                        isPrime = false
                    }
                    else {
                        
                        var i = 2
                        
                        while i < number {
                            
                            if number % i == 0 {
                                isPrime = false
                            }
                            i += 1
                        }
                    }
                    if isPrime {
                        resultLbl.text = "\(number) is Prime"
                    } else {
                        resultLbl.text = "\(number) is not Prime"
                    }

                }
                
            } else {
                
                resultLbl.text = "Please Enter Positive Number Only, Thanks"
            }
        }
    }
    @IBOutlet weak var resultLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

