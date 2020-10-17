//
//  AppIcon.swift
//  work2
//
//  Created by tsui erh li on 2020/10/16.
//

import SwiftUI

struct AppIcon: View {
    var body: some View {
        HStack{
            Button(action:{UIApplication.shared.setAlternateIconName(nil)}){
                Image("coda").resizable().scaledToFit()
            }
            Button(action:{UIApplication.shared.setAlternateIconName("lalalalo-2")}){
                Image("coda2").resizable().scaledToFit()
            }
            Button(action:{UIApplication.shared.setAlternateIconName("lalalalo-3")}){
                Image("se").resizable().scaledToFit()
            }
        }.frame(height:200)
    }
}

struct AppIcon_Previews: PreviewProvider {
    static var previews: some View {
        AppIcon()
    }
}
