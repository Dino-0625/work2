//
//  DiceGame.swift
//  work2
//
//  Created by tsui erh li on 2020/10/11.
//

import SwiftUI

struct DiceGame: View {
    @State var number=3
    var body: some View {
        VStack{
            Image(systemName: "die.face.\(number).fill")
                .resizable().frame(width:300,height:300)
            Button("change"){
                number=Int.random(in: 1...6)
            }
        }
    }
}

struct DiceGame_Previews: PreviewProvider {
    static var previews: some View {
        DiceGame()
    }
}
