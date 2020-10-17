//
//  work-5.swift
//  work2
//
//  Created by tsui erh li on 2020/10/10.
//

import SwiftUI


struct Music: View {
    let songs1=[Song(name:"下輩子",singer:"九壹壹",lyric:"我知 妳老母都嫌我醜\n我知 妳老爸都看我不爽快\n我知 妳家的狗 咬我三次"),
                Song(name:"K歌之王",singer:"陳奕迅",lyric:"我唱得不够动人 你别皱眉\n我愿意和你 约定至死\n我只想嬉戏唱游 到下世纪\n请你别嫌我将这煽情奉献给你"),
               
                Song(name:"無名之輩",singer:"未之",lyric:"城市黎明的燈火\n總有光環在隕落\n模仿者一個又一個"),
                Song(name:"孤單患者",singer:"陳奕迅",lyric:""),
               Song(name:"聽不到",singer:"梁靜茹",lyric:""),
               Song(name:"KING",singer:"未知",lyric:""),
               Song(name:"心的距離",singer:"陳奕迅",lyric:"")
    ]
    let songs2=[Song(name:"一個夏天像秋天",singer:"梁靜茹",lyric:""),
               Song(name:"超人不會飛",singer:"周杰倫",lyric:""),
               Song(name:"孤單患者",singer:"陳奕迅",lyric:""),
               Song(name:"聽不到",singer:"梁靜茹",lyric:""),
               Song(name:"KING",singer:"未知",lyric:""),
               Song(name:"心的距離",singer:"陳奕迅",lyric:"")
    ]
    
    var body: some View {
        
        ZStack {
            Color(.blue)
            ScrollView(.vertical,showsIndicators: false){
                    
                    VStack{
                        Section(header:Text("Sunny").bold().foregroundColor(.white)){
                            
                                ForEach(songs1.indices){
                                    (item)in NavigationLink(destination: Music_Detail(song: songs1[item])) {
                                        Comic(song: songs1[item])
                                        }//Comic(song:songs2[item])
                                }
                            
                        }
                        Section(header:Text("Sad")){
                            ForEach(songs2.indices){
                                (item)in NavigationLink(destination: Music_Detail(song: songs2[item])) {
                                    Comic(song: songs2[item])
                                    }
                            }
                        }
                    }.padding()//.listStyle(GroupedListStyle())//.frame(height:20)
            }
        }
            
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Music_Previews: PreviewProvider {
    static var previews: some View {
        Music()
    }
}
