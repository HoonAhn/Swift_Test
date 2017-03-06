//
//  Money.swift
//  MoneyConverter
//
//  Created by Sanghoon Ahn on 2016. 7. 12..
//  Copyright © 2016년 Sanghoon Ahn. All rights reserved.
//

import Foundation

enum Currency:Int {
    case USD = 0, KRW, JPY, EUR
    
    var ratio : Double {
        get{
            switch self{
            case .USD : return 1.0
            case .KRW : return 1178.5
            case .JPY : return 122.45
            case .EUR : return 0.92
            }
        }
    }
    var symbol:String{
        get{
            switch self{
            case .USD : return "$"
            case .KRW : return "₩"
            case .JPY : return "¥"
            case .EUR : return "€"
            }
        }
    }
}

struct Money {
    var usdollar = 0.0
    
    init (_ _usdollar:Double) {
        usdollar = _usdollar
    }
    init (_ amount:Double, currecy:Currency) {
        usdollar = amount / currecy.ratio
    }
    
    func valueInCurrecy(currency:Currency) -> String{
        return "\(currency.symbol)"+"\(usdollar * currency.ratio)"
    }
}

let myMoney = Money(120.0)
let incomeInKRW = Money(350_000, currecy: .KRW)
