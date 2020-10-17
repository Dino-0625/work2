//
//  SwiftUIView.swift
//  work2
//
//  Created by tsui erh li on 2020/10/11.
//

import SwiftUI

struct LikeWebView: View {
    @State private var movedd : CGFloat = 0
    @State private var show = false
    var body: some View {
        ZStack {
            Color("Color-3").scaledToFill().frame(minWidth:0,maxWidth:.infinity).edgesIgnoringSafeArea(.all)
            Button(show ? "show":"hide"){
                if(show){
                    movedd+=800
                }
                else{
                    movedd=0
                }
                self.show.toggle()
            }.animation(nil).offset(x: 0, y: 100)
            Image("baseball").resizable().frame(width: 100, height: 100).offset(x:0,y:movedd).animation(Animation.spring(dampingFraction: 0.1).repeatCount(1,autoreverses: true)).position(x: 150, y: -150)
            VStack{
                Text("喜歡的網站")
                HStack {
                    Link(destination: URL(string:"https://www.mlb.com")!) {
                        Image("mlb").resizable().scaledToFill().frame(width:100,height:100).background(Color.black).cornerRadius(30)
                            .shadow(radius:10)
                    }
                    Link(destination: URL(string:"https://www.youtube.com")!) {
                        Image("youtube").resizable().scaledToFill().frame(width:100,height:100).background(Color.black).cornerRadius(30)
                            .shadow(radius:10)
                    }
                    .navigationBarTitle(Text("Web"),displayMode: .inline)
                }
                
                
            }
        }
        
    }
}

struct LikeWebView_Previews: PreviewProvider {
    static var previews: some View {
        LikeWebView()
    }
}
