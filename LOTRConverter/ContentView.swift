//
//  ContentView.swift
//  LOTRConverter
//
//  Created by zee-RGB on 1/1/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var infoScreen = false
    
    @State var leftSideAmount = ""
    @State var rightSideAmount = ""
    
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
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        
                        //TextField()
                        TextField("Amount", text: $leftSideAmount)
                            .textFieldStyle(.roundedBorder)
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
                            Text("Gold penny")
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(.goldpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)

                        //TextField()
                        TextField("Amount", text: $rightSideAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    //Info Button
                    Button {
                        infoScreen.toggle()
                        print(infoScreen)
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
