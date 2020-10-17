//
//  Music_Detail.swift
//  work2
//
//  Created by tsui erh li on 2020/10/11.
//

import SwiftUI

struct Music_Detail: View {
    let song :Song
    var body: some View {
        VStack{
            
            Image("back").resizable().scaledToFill().frame(height:300).clipped()
            
            Text(song.lyric).padding()
        }
    }
}


struct Music_Detail_Previews: PreviewProvider {
    static var previews: some View {
        
        Music_Detail(song:Song(name:"未知",singer: "未知",lyric:"無"))
    }
}
