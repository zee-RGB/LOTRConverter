//
//  ContentView.swift
//  LOTRConverter
//
//  Created by zee-RGB on 1/1/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var infoScreen = false
    
    var body: some View {
        ZStack {
            //Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack() {
                //Prancing Horse Image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)

                
                //Currency Title
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                HStack{
                    //Left & right conversion
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
                        //TextField()
                        Text("TextField()")
                            .foregroundStyle(.white)
                    }
                    
                    //Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                        .padding()
                    
                    
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
                        //TextField()
                        Text("TextField()")
                            .foregroundStyle(.white)
                    }
                }
                
                
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
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
