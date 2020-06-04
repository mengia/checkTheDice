//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by mamo on 6/3/20.
//  Copyright © 2020 mamo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    var body: some View {
        ZStack {
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                   Spacer()
                HStack {
                    DiceView(n:leftDiceNumber)
                    DiceView(n:rightDiceNumber)
                }
            
            .padding(.horizontal)
           
                Spacer()

                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .fontWeight(.heavy)
                        .font(.system(size: 50)).foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                
          
}}
            
}
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        
        Image("dice\(n)").resizable()
            .aspectRatio(1, contentMode:.fit)
        
    }
}
