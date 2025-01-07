//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by zee-RGB on 3/1/2025.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency

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
                IconGrid(currency: $topCurrency)
                    
                    Text("Select the currency you would like to convert to:")
                        .fontWeight(.bold)
                        .padding(.top)

                    
                    //Icons
                IconGrid(currency: $bottomCurrency)
            
                
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
    @Previewable @State var topCurrency: Currency = .silverPenny
    @Previewable @State var bottomCurrency: Currency = .goldPenny

    
    SelectCurrency(topCurrency: $topCurrency, bottomCurrency: $bottomCurrency)
}

