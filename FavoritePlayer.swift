//
//  FavoritePlayer.swift
//  work2
//
//  Created by tsui erh li on 2020/10/11.
//

import SwiftUI

struct FavoritePlayer: View {
    var playerName : [String] = ["trout","bellinger","machado","profar","Tatis","ohtani"]
    var body: some View {
        ZStack {
            Image("stadium2").resizable().scaledToFill().frame(minWidth:0,maxWidth:.infinity).edgesIgnoringSafeArea(.all)
            TabView{
                ForEach(0..<6){
                    (index)in
                    
                    VStack {
                        Text(playerName[index]).font(.system(size:65,design:.rounded)).fontWeight(.heavy).foregroundColor(Color.black)
                        Image(playerName[index]).resizable().scaledToFit()
                    }
                }
                .navigationBarTitle(Text("Baseball_STAR"),displayMode: .inline)
            }.tabViewStyle(PageTabViewStyle())
        }
    }
}

struct FavoritePlayer_Previews: PreviewProvider {
    static var previews: some View {
        FavoritePlayer()
    }
}
