//
//  ViewController.swift
//  MVCmodelLearning01
//
//  Created by 中塚富士雄 on 2020/08/16.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var stringLabel: UILabel!
    
    //calculatorクラスを初期化
    let calculator = Calculator()
    //stringPlusを初期化
    let stplus = StringPlus()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
    }

    @IBAction func tapCalc(_ sender: Any) {
        
        if let numeric = Int(textField1.text!){
                   print("numeric")
          var inputCount1 = Int(textField1.text!)
          var inputCount2 = Int(textField2.text!)
          var  resultCount = calculator.plus(number1: inputCount1!, number2: inputCount2!)
       
          resultLabel.text = String(resultCount)
           print("結果はここに")
            //Calcuratorクラスから継承された全てのメソッドを使えるstplus
           print(stplus.plus(number1: 10, number2: 5))
            
        
        } else {
            
            print("Not only numeric")
          
            stringLabel.text = stplus.stringPlus(moji1: textField1.text!, moji2: textField2.text!)
 
        }
        
 
       
    }
    
}

