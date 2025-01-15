//
//  PennyView.swift
//  LOTRConverter
//
//  Created by zee-RGB on 3/1/2025.
//

import SwiftUI

struct CurrencyView: View {
    
    
    let currencyImage: ImageResource
    let currencyName: String
    
    var body: some View {

                ZStack(alignment: .bottom) {
                    Image(currencyImage)
                        .resizable()
                        .scaledToFit()
                    
                    Text(currencyName)
                        .padding(3)
                        .font(.caption)
                        .frame(maxWidth: .infinity)
                        .background(.brown.opacity(0.75))
                    
                }
                .padding(3)
                .frame(width: 100, height: 100)
                .background(.brown)
                .clipShape(.rect(cornerRadius: 25))
            }
        }


#Preview {
    CurrencyView(currencyImage: .copperpenny, currencyName: "Copper Penny")
}
