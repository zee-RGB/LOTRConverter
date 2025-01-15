//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by zee-RGB on 7/1/2025.
//

import SwiftUI

struct IconGrid: View {
    
    //Binded by SelectCurrency (binded) variables, which are binded by the ContentView state variables
    @Binding var currency: Currency

    var body: some View {
        
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            
            ForEach(Currency.allCases) { currency in
                if self.currency == currency {
                    CurrencyView(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyView(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            self.currency = currency
                        }
                }
            }
            
        }
    }
}

#Preview {
    @Previewable @State var currency: Currency = .copperPenny
    IconGrid(currency: $currency)
}
