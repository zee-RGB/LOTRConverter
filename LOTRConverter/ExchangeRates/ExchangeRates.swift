//
//  ExchangeRates.swift
//  LOTRConverter
//
//  Created by zee-RGB on 2/1/2025.
//

import SwiftUI

struct ExchangeRates: View {
    
    let leftCoinImage: ImageResource
    let rightCoinImage: ImageResource
    let leftExchangeText: String
    let rightExchangeText: String
    
    var body: some View {
        HStack{
            Image(leftCoinImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            Text(leftExchangeText)
            
            Image(systemName: "equal")
            
            Text(rightExchangeText)
            Image(rightCoinImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRates(leftCoinImage: .silverpenny, rightCoinImage: .copperpenny, leftExchangeText: "1 Silver Penny", rightExchangeText: "100 Copper Pennies")
    
}
