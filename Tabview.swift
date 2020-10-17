//
//  work_4.swift
//  work2
//
//  Created by tsui erh li on 2020/10/10.
//

import SwiftUI

struct Tabview: View {
    var body: some View {
        TabView{
            About_me().tabItem{
                Image(systemName:"music.house.fill")
                Text("Jay Chou")
            }
            ContentView().tabItem {
                Image(systemName:"Info.circle.fill")
                Text("兩斤")
            }
            .navigationBarTitle(Text("Me"),displayMode: .inline).accentColor(.blue)
        }.accentColor(.orange)
    }
}

struct Tabview_Previews: PreviewProvider {
    static var previews: some View {
        Tabview()
    }
}
