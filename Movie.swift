//
//  Movie.swift
//  work2
//
//  Created by tsui erh li on 2020/10/17.
//

import SwiftUI
let movie=["end","geostorm","maze","toys","2012","lone_survivor","guardians"]
let movie2=["tenet","titanic","spider","steller","survivor","avatar","the_day_after_tomorrow"]
struct Movie: View {
    var body: some View {
        ZStack {
            Color(.yellow).frame(minWidth:0,maxWidth:.infinity).edgesIgnoringSafeArea(.all)
            
            List{
                ScrollView(.horizontal){
                    HStack(spacing:20){
                        ForEach(movie.indices){
                            (item) in Image(movie[item]).resizable().scaledToFill().frame(width:250).clipped()
                                .overlay(Text(movie[item]).foregroundColor(.white).font(.largeTitle).bold(),alignment:.topLeading)
                        }
                    }.frame(height:200)
                }
                ForEach(movie2.indices){
                    (item)in
                    Text(movie2[item]).font(.largeTitle).fontWeight(.bold).underline()
                        Image(movie2[item]).resizable().scaledToFill().frame(width:200).clipped()
                    
                    }
                .navigationBarTitle(Text("Movie"),displayMode: .inline)
            }.background(Color.yellow)
            
            
        }
        }
    
}

struct Movie_Previews: PreviewProvider {
    static var previews: some View {
        Movie()
    }
}
