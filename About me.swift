//
//  About me.swift
//  work2
//
//  Created by tsui erh li on 2020/10/11.
//

import SwiftUI

struct About_me: View {
    var body: some View {
        ZStack {
            Color("Color").scaledToFill().frame(minWidth:0,maxWidth:.infinity).edgesIgnoringSafeArea(.all)
            VStack{
                Image("coda").resizable().scaledToFill().frame(width:350,height:350).background(Color.green).clipShape(Circle()).offset(x:0,y:-100)
                Text("我是李佳勳 今年二十歲 oh yeah!").foregroundColor(Color.black).background(Capsule())
                    .foregroundColor(Color.green)
            }
            .navigationBarTitle(Text("Me"),displayMode: .inline).accentColor(.blue)
        }
    }
}

struct About_me_Previews: PreviewProvider {
    static var previews: some View {
        About_me()
    }
}
