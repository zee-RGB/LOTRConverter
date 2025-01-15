//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by zee-RGB on 15/1/2025.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("Tap to select Currency")
    
    var image: Image? = Image(systemName: "hand.tap.fill")

}
