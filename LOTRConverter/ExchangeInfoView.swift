//
//  ExchangeInfoView.swift
//  LOTRConverter
//
//  Created by zee-RGB on 2/1/2025.
//

import SwiftUI

struct ExchangeInfoView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown.mix(with: .black, by: 0.3))
            
            VStack (spacing: 15){
                //Title
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(2)
                    .padding(.bottom, 25)
                
                //Text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .padding()
                
                //Exchange Rates
                ExchangeRates(leftCoinImage: .goldpiece, rightCoinImage: .goldpenny, leftExchangeText: "1 Gold Piece", rightExchangeText: "4 Gold Pennies")

                
                ExchangeRates(leftCoinImage: .goldpenny, rightCoinImage: .silverpiece, leftExchangeText: "1 Gold Penny", rightExchangeText: "4 Silver Pieces")

                
                ExchangeRates(leftCoinImage: .silverpiece, rightCoinImage: .silverpenny, leftExchangeText: "1 Silver Piece", rightExchangeText: "4 Silver Pennies")
                
                ExchangeRates(leftCoinImage: .silverpenny, rightCoinImage: .copperpenny, leftExchangeText: "1 Silver Penny", rightExchangeText: "100 Copper Pennies")
                
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
                .padding()
            }
            .foregroundStyle(.black)

        }
    }
}

#Preview {
    ExchangeInfoView()
}
