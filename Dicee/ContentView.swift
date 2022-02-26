//
//  ContentView.swift
//  Dicee
//
//  Created by Augusto on 2/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNum = 1
    @State var rightDiceNum = 1
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNum)
                    DiceView(n: rightDiceNum)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNum = Int.random(in: 1...6)
                    self.rightDiceNum = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
