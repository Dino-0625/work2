//
//  Lazzygrid.swift
//  work2
//
//  Created by tsui erh li on 2020/10/16.
//

import SwiftUI
/*
struct Lazzygrid: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Lazzygrid_Previews: PreviewProvider {
    static var previews: some View {
        Lazzygrid()
    }
}*/
//
//  Lazy_grid.swift
//  work2
//
//  Created by tsui erh li on 2020/10/16.
//


struct Lazzygrid: View {
    let books=[
        "cubs",
        "angel",
        "blue",
        "orio",
        "ray",
        "redsox",
        "royal",
        "Tex",
        "red",
        "astro",
        "padres",
        "braves",
        "pirate",
        "yankees",
        "cleve",
        "phille",
        "snack",
        "Twin"
        
        
    ]
    @State var move2 : CGFloat = 0
    var body: some View {
        
        ZStack {
            Color("Color")
            HStack {
                Text("被你發現了 ...").bold().foregroundColor(.black).italic()
                Image("小新-1").resizable().frame(width:100,height:100)
            }.offset(x:move2,y:350).animation(Animation.linear(duration:5)).onAppear{
                move2 = 300
            }.offset(x:-250,y:-200).zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            ScrollView(.vertical){
                
                let columns=[GridItem(),GridItem()]
                LazyVGrid(columns:columns){
                    ForEach(books.indices){
                        (index) in
                        VStack(spacing:20){
                            Image(books[index]).resizable().scaledToFill().frame(width:150,height:150).clipped()
                            Text(books[index])
                        }.foregroundColor(Color("Color-1")).font(.system(size:35,design:.rounded))
                        .overlay(Image(systemName:"\(index+1).square.fill")
                                    .font(.largeTitle),alignment:.topLeading)
                        
                    }
                    
                }
                .navigationBarTitle(Text("Baseball Team"),displayMode: .inline)
            }
        }
        
    }
}

struct Lazzygrid_Previews: PreviewProvider {
    static var previews: some View {
        Lazzygrid()
        
    }
}
