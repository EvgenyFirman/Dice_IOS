//
//  ContentView.swift
//  DiceSwiftUI
//
//  Created by Евгений Фирман on 09.05.2021.
//
// Importing libraries

import SwiftUI

struct ContentView: View {
   @State var leftNumber: Int = 1
    @State var rightNumber: Int = 1
    var body: some View {
        ZStack {
            Image("background").resizable().ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    Image("dice\(leftNumber)").resizable().frame(width: 150, height: 150, alignment: .center).padding()
                    Image("dice\(rightNumber)").resizable().frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding()
                }
                Spacer()
                Button(action: {
                    self.leftNumber = Int.random(in: 1...6)
                    self.rightNumber = Int.random(in: 1...6)
                }, label: {
                        Text("Roll")
                            .font(Font.system(size: 40))
                            .foregroundColor(.white).frame(width: 200, height: 90)
                })
                .background(Color.red).cornerRadius(30).padding(.bottom, 30)
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
