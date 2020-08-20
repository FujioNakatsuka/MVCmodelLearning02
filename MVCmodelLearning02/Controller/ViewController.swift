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
    @IBOutlet weak var segmentCalc: UISegmentedControl!
    
    //calculatorクラスを初期化
    let calculator = Calculator()
    //stringPlusを初期化
    let stplus = StringPlus()
    
    let resultCount = segmentCalc
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//足し算：tapCalc(「計算」)を押した時の処理（Live授業）
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
//              
    //四則演算を行うsegmentCalcボタンを押した時の処理
    //😢なぜか最初に足し算をすると結果が返らない？理由は初動の位置だとすると5分割が必要か？
    @IBAction func segmentCalc(_ sender: UISegmentedControl) {
        if let numeric = Int(textField1.text!){
            print("numeric")
            
        var inputCount1 = Int(textField1.text!)
        var inputCount2 = Int(textField2.text!)
        
        
        switch sender.selectedSegmentIndex {
        case 0:
            var  resultCount = calculator.plus(number1: inputCount1!, number2: inputCount2!)
            resultLabel.text = String(resultCount)
        
        case 1: var resultCount =  calculator.minus(number1: inputCount1!, number2: inputCount2!)
            resultLabel.text = String(resultCount)
            
            
        case 2: var resultCount = calculator.multiple(number1: inputCount1!, number2: inputCount2!)
            resultLabel.text = String(resultCount)
            
            
        case 3: var resultCount = calculator.divide(number1: inputCount1!, number2: inputCount2!)
            resultLabel.text = String(resultCount)
            
            print("結果はここに")
            //Calcuratorクラスから継承された全てのメソッドを使えるstplus
            print(stplus.plus(number1: 10, number2: 5))
            
            
        default:
            print("0")
         }

        } else {print("Not only numeric")
        stringLabel.text = stplus.stringPlus(moji1: textField1.text!, moji2: textField2.text!)
      }
  
    
        
}
    
    @IBAction func clearAllButton(_ sender: Any) {
        
        textField1.text = ""
        textField2.text = ""
        resultLabel.text = "結果"
        stringLabel.text = "文字列"
        
    }
    
}

