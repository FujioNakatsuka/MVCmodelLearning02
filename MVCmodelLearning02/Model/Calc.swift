//
//  Calc.swift
//  MVCmodelLearning01
//
//  Created by 中塚富士雄 on 2020/08/16.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import Foundation
//superClass Calculatorを定義
class Calculator{
    
    var inPut1:Int = 0
    var inPut2:Int = 0
    
    //initが必要な理由は？
    init(){
        
        inPut1 = 0
        inPut2 = 0
        
    }
    //number1、2は内部メソッド（output要素）、Intは外部メソッド（input要素）
    //let 以下はViewに演算値を渡す処理
    func plus(number1:Int,number2:Int)-> Int{
        let total = number1 + number2
        return total
        
    }
    func minus(number1:Int,number2:Int)-> Int{
    let total = number1 - number2
    return total

    }
    func divide(number1:Int,number2:Int)-> Int{
    let total = number1 / number2
    return total

    }
    func multiple(number1:Int,number2:Int)-> Int{
    let total = number1 * number2
    return total

    }

}
