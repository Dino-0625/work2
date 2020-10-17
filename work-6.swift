//
//  work-6.swift
//  work2
//
//  Created by tsui erh li on 2020/10/10.
//

import SwiftUI

struct work_6: View {
    @State private var show=false
    @State private var opacityqq:Double=0
    @State private var opacity : Double = 1
    @State private var move : CGFloat = 0
    @State private var move2 : CGFloat = 0
    var body: some View {
        VStack(spacing:20){
            
            Button(show ? "hide":"show"){
                
                self.show.toggle()
            }.animation(nil)
            if show{
                Image("mona").transition(
                    .asymmetric(insertion:.scale,removal:.slide)
                )
                
            }
            else{
                Image("mona").hidden()
            }
            
        }.animation(.easeInOut(duration: 5)).onAppear{
            self.show=true
        }
        
    }
}

struct work_6_Previews: PreviewProvider {
    static var previews: some View {
        work_6()
    }
}
