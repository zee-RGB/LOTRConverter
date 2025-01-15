//
//  ContentView.swift
//  LOTRConverter
//
//  Created by zee-RGB on 1/1/2025.
//

import SwiftUI
import TipKit

struct ContentView: View {
    
    @State private var showInfoScreen = false
    @State private var showSelectCurrency = false
    
    @State var leftSideAmount = ""
    @State var rightSideAmount = ""
    
    @State var leftCurrency: Currency = .silverPiece
    @State var rightCurrency: Currency = .goldPiece
    
    @FocusState var leftTyping
    @FocusState var rightTyping
    
    let currencyTip = CurrencyTip()
    
    var body: some View {
        ZStack {
            //Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack() {
                //Prancing Pony Image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                //Currency Title
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                HStack{
                    //Left side
                    VStack{
                        HStack {
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                                showSelectCurrency.toggle()
                            currencyTip.invalidate(reason: .actionPerformed)
                            }
                        .popoverTip(currencyTip, arrowEdge: .bottom)
                        .task {
                            try? Tips.configure()
                        }
                        .sheet(isPresented: $showSelectCurrency) {
                            SelectCurrency(topCurrency: $leftCurrency, bottomCurrency: $rightCurrency)
                        }
                        
                        //Left TextField()
                        TextField("Amount", text: $leftSideAmount)
                            .textFieldStyle(.roundedBorder)
                            .focused($leftTyping)
                            .onChange(of: leftSideAmount) {
                                if leftTyping {
                                    rightSideAmount = leftCurrency.convert(from: leftSideAmount, to: rightCurrency)
                                }
                            }
                            .onChange(of: leftCurrency) {
                                leftSideAmount = rightCurrency.convert(from: rightSideAmount, to: leftCurrency)
                            }
                    }
                    
                    //Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                        .padding(5)
                    
                    //right side
                    VStack{
                        HStack {
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }


                        //Right TextField()
                        TextField("Amount", text: $rightSideAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                            .focused($rightTyping)
                            .onChange(of: rightSideAmount) {
                                if rightTyping {
                                    leftSideAmount = rightCurrency.convert(from: rightSideAmount, to: leftCurrency)
                                }
                            }
                            .onChange(of: rightCurrency) {
                                rightSideAmount = leftCurrency.convert(from: leftSideAmount, to: rightCurrency)
                            }
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                .keyboardType(.decimalPad)
                                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    //Info Button
                    Button {
                        showInfoScreen.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showInfoScreen) {
                        ExchangeInfoView()
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
