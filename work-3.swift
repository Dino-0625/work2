//
//  work-3.swift
//  work2
//
//  Created by tsui erh li on 2020/10/10.
//

import SwiftUI

struct Song{
    let name:String
    let singer:String
    let lyric:String
}
struct Comic: View{
    let song:Song
    var body :some View{
        HStack{
            Image("ocean").resizable().scaledToFill()
                .frame(width:80,height:80).clipped()
            ZStack {
                Color("Color-2").frame(width:.infinity,height:80)
                VStack(alignment:.leading){
                    Text(song.name).bold().fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(song.singer).bold().fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }.offset(x:-50)
                
            }
            Spacer()
        }
    }
}
struct work_3: View {
    var body: some View {
        VStack{
            Comic(song:Song(name:"晴天",singer:"周杰倫",lyric:""))
            Comic(song:Song(name:"雙節棍",singer:"周杰倫",lyric:""))
            List(0..<5){
                (item)in Text("地\(item)個")
            }
            
        
            Text("remgigm")
                    
           
        }
        .navigationTitle("cccc")
        
    }
}

struct work_3_Previews: PreviewProvider {
    static var previews: some View {
        //NavigationView{
        //work_3()
        Comic(song: Song(name:"對的時間點",singer:"林巨結",lyric:"未知"))
            .previewLayout(.sizeThatFits)
        
        //}
    }
}
