//
//  second.swift
//  work2
//
//  Created by tsui erh li on 2020/10/2.
//

import SwiftUI

struct Tri: Shape {
    
    func path(in rect: CGRect)->Path{
        Path{
            (path)in
            path.move(to:CGPoint(x:0,y:0))
            path.addLine(to:CGPoint(x:rect.width,y:0))
            path.addLine(to:CGPoint(x:rect.width,y:rect.height))
            path.closeSubpath()
        }
    }
}


struct secondView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("ocean").resizable().scaledToFill().frame(minWidth:0,maxWidth:.infinity).edgesIgnoringSafeArea(.all)
                
                    
                    VStack{
                        thirdView()
                        ZStack{
                            TriSubview().offset(x:50,y:50)
                            TriSubview(wid:100,hei:100)
                            Image(systemName:"icloud").resizable().scaledToFit().frame(width:50,height:50)
                            
                                Path((CGRect(x:50,y:0,width:201,height:31))).stroke(Color(red:0,green:1,blue:0)).foregroundColor(.purple)
                            
                            Path((CGRect(x:50,y:0,width:200,height:30))).foregroundColor(.purple)
                        }
                        Path((CGRect(x:50,y:0,width:200,height:30))).stroke(Color(red:0,green:1,blue:0)).foregroundColor(.purple)
                        Text("Hello, Wor999ld!")
                        Rectangle().frame(width:200,height:200).foregroundColor(Color.green)
                        HStack{
                            Image("coda").resizable().scaledToFill().frame(width:100,height:100).background(Color.black).clipShape(Circle())
                                .shadow(radius:10)
                            Text("你好我是可達鴨").bold().padding().background(Capsule().foregroundColor(Color.yellow))
                        }
                        
                        
                        
                        
                    }
                    
                    
                
                
            }
            .navigationTitle("Main Title")
        }
        
    }
}

struct second_Previews: PreviewProvider {
    static var previews: some View {
        secondView()
    }
}

struct TriSubview: View {
    var wid: CGFloat=50
    var hei: CGFloat=50
    
    var body: some View {
        Tri().fill(Color.red).frame(width:wid,height:hei)
            .position(x:180,y:80).rotationEffect(.degrees(70)).shadow(color:Color.green.opacity(0.3),radius:5,x:10,y:10)
    }
}

struct thirdView: View {
    var body: some View {
        NavigationLink(destination:work_3()){
            Text("shift").foregroundColor(Color.green)
            
        }
    }
}
