//
//  StringPlus.swift
//  MVCmodelLearning01
//
//  Created by 中塚富士雄 on 2020/08/16.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import Foundation

//Calculatorクラスを継承したStringPlus
class StringPlus: Calculator {
    var string1 = String()
    var string2 = String()
    
    var num1 = Int()
    var num2 = Int()
    
    //Calculatorクラスでinitというメソッドを持っているので、overrideで上書きをする
    override init() {
        string1 = ""
        string2 = ""
        num1 = 0
        num2 = 0
        
    }
    //stringPlusで初めて設定したメソッドなので、上書きの必要がない。Calc.swifのメソッド「plus」と重複を避けた。
    func stringPlus(moji1:String,moji2:String)->String{
        //内部メソッド
        var total = moji1 + moji2
       return total
        
    }
    
    override func plus(number1: Int, number2: Int) -> Int {
        var total = number1 + number2
        return total
   
    }
   

}
    
    

