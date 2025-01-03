//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by zee-RGB on 3/1/2025.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown.mix(with: .black, by: 0.5))
            
            VStack{
                
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                //Icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    
                    ForEach(0..<5) { _ in
                        CurrencyView(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    }
                    
                }
                    
                    Text("Select the currency you would like to convert to:")
                        .fontWeight(.bold)
                    
                    //Icons
                    
                    
                    
                    //Button
                    Button {
                        dismiss()
                    } label: {
                        Text("Done")
                            .frame(width: 80, height: 50)
                            .foregroundStyle(.white)
                            .font(.title)
                            .background(.brown.mix(with: .black, by: 0.2))
                            .clipShape(.rect(cornerRadius: 5))
                            .padding()
                    }
                }
                .padding()
                .multilineTextAlignment(.center)
                
                
            }
        }
    }

#Preview {
    SelectCurrency()
}

