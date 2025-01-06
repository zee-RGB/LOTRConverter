//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by zee-RGB on 3/1/2025.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    @State var leftCurrency: Currency
    @State var rightCurrency: Currency

    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown.mix(with: .black, by: 0.5))
            
            VStack{
                
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .padding()

                
                //Icons
                IconGrid(currency: leftCurrency)
                    
                    Text("Select the currency you would like to convert to:")
                        .fontWeight(.bold)
                        .padding(.top)

                    
                    //Icons
                IconGrid(currency: rightCurrency)
            
                
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
                .foregroundStyle(.black)
                
            }
        }
    }

#Preview {
    SelectCurrency(leftCurrency: .silverPenny, rightCurrency: .goldPenny)
}

