//
//  ContentView.swift
//  aaa
//
//  Created by User12 on 2020/9/30.
//

import SwiftUI


struct ContentView: View {
    var xx:Int=50
    var yy:Int=50
    
    var body: some View {
        // NavigationView{
        
        
        ZStack{
            
            Image("back2").resizable().frame(width: 800.0, height: 600.0).offset(x:-90,y:-20)
            Image("back").resizable()
                            .frame(width: 400.0, height: 400.0).offset(x:50,y:50)

            
            Group{
                Group{//hair
                    Path{
                        (path)in
                        path.move(to:CGPoint(x:20,y:94-yy))
                        path.addQuadCurve(to:CGPoint(x:9,y:85-yy),control:CGPoint(x:14,y:84-yy))
                        path.addQuadCurve(to:CGPoint(x:16,y:26-yy),control:CGPoint(x:8,y:56-yy))
                        path.addLine(to:CGPoint(x:9,y:11-yy))
                        
                        path.addCurve (to:CGPoint(x:221,y:87-yy ),control1:CGPoint(x:197,y:-30-yy),control2:CGPoint(x:225,y:10-yy))
                        
                    }
                }
                Group{//ear
                    Path{
                        (path)in
                        path.move(to:CGPoint(x:28,y:99-yy))
                        path.addCurve (to:CGPoint(x:25,y:170-yy ),control1:CGPoint(x:-1,y:20-yy),control2:CGPoint(x:-28,y:156-yy))
                    }.fill(Color(red:250/255,green:178/255,blue:110/255,opacity:1))
                    Path{
                        (path)in
                        path.move(to:CGPoint(x:203,y:97-yy))
                        path.addCurve (to:CGPoint(x:192,y:170-yy ),control1:CGPoint(x:235,y:20-yy),control2:CGPoint(x:270,y:132-yy))
                    }.fill(Color(red:250/255,green:178/255,blue:110/255,opacity:1))
                    Path{
                        (path)in
                        path.move(to:CGPoint(x:20,y:109-yy))
                        path.addCurve(to:CGPoint(x:21,y:143-yy ),control1:CGPoint(x:0,y:72-yy),control2:CGPoint(x:9,y:138-yy))
                    }.stroke()
                    Path{
                        (path)in
                        path.move(to:CGPoint(x:206,y:110-yy))
                        path.addCurve(to:CGPoint(x:206,y:140-yy ),control1:CGPoint(x:222,y:65-yy),control2:CGPoint(x:220,y:138-yy))
                    }.stroke()
                    
                }
                Path{//face
                    (path)in
                    path.move(to:CGPoint(x:31,y:29-yy))
                    path.addQuadCurve(to:CGPoint(x:99,y:16-yy),control:CGPoint(x:69,y:15-yy))
                    path.addLine(to:CGPoint(x:115,y:24-yy))
                    path.addLine(to:CGPoint(x:130,y:16-yy))
                    path.addQuadCurve(to:CGPoint(x:199,y:26-yy),control:CGPoint(x:163,y:15-yy))
                    path.addLine(to:CGPoint(x:211,y:67-yy))
                    path.addLine(to:CGPoint(x:206,y:92-yy))
                    path.addQuadCurve(to:CGPoint(x:201,y:191-yy),control:CGPoint(x:207,y:154-yy))
                    path.addLine(to:CGPoint(x:154,y:224-yy))
                    path.addQuadCurve(to:CGPoint(x:79,y:224-yy),control:CGPoint(x:113,y:235-yy))
                    path.addLine(to:CGPoint(x:27,y:188-yy))
                    path.addQuadCurve(to:CGPoint(x:23,y:100-yy),control:CGPoint(x:17,y:145-yy))
                    path.addLine(to:CGPoint(x:17,y:72-yy))
                    
                    
                }.fill(Color(red:250/255,green:178/255,blue:110/255,opacity:1))
                
                
                Path{(path)in
                    path.move(to:CGPoint (x:25,y:55-yy))
                    
                    path.addQuadCurve(to:CGPoint(x:115,y:67-yy),control:CGPoint(x:69,y:0-yy))
                    path
                        .addQuadCurve(to:CGPoint(x:204,y:53-yy),control:CGPoint(x:162,y:3-yy))
                    path.addLine(to:CGPoint(x:192,y:64-yy))
                    path
                        .addQuadCurve(to:CGPoint(x:125,y:86-yy),control:CGPoint(x:165,y:26-yy))
                    path.addLine(to:CGPoint(x:105,y:87-yy))
                    path
                        .addQuadCurve(to:CGPoint(x:35,y:70-yy),control:CGPoint(x:69,y:26-yy))
                    path
                        .closeSubpath()
                    
                    /*path.addQuadCurve(to:CGPoint(x:300,y:80),control:CGPoint(x:250,y:120))*/
                }
                .fill(Color.black)//eyeblow
                Group{
                    Path{(path)in
                        path.move(to:CGPoint(x:42,y:83-yy))
                        path.addCurve (to:CGPoint(x:95,y:89-yy ),control1:CGPoint(x:56,y:43-yy),control2:CGPoint(x:86,y:47-yy))
                        path.addLine(to:CGPoint(x:91,y:97-yy))
                        path
                            .addQuadCurve(to:CGPoint(x:50,y:98-yy),control:CGPoint(x:72,y:95-yy))
                        
                        
                    }
                    .fill(Color.white)
                    Path{
                        (path)in
                        path.move(to:CGPoint(x:134,y:89-yy))
                        path.addCurve (to:CGPoint(x:185,y:84-yy ),control1:CGPoint(x:144,y:42-yy),control2:CGPoint(x:180,y:48-yy))
                        path.addQuadCurve(to:CGPoint(x:176,y:96-yy),control:CGPoint(x:182,y:89-yy))
                        path.addQuadCurve(to:CGPoint(x:140,y:98-yy),control:CGPoint(x:157,y:96-yy))
                        
                        
                    }.fill(Color.white)
                }
                Group{//mouth teeth
                    Path{
                        (path)in
                        path.move(to:CGPoint(x:33,y:137-yy))
                        path.addCurve (to:CGPoint(x:109,y:143-yy ),control1:CGPoint(x:46,y:100-yy),control2:CGPoint(x:76,y:133-yy))
                        path.addCurve (to:CGPoint(x:196,y:135-yy ),control1:CGPoint(x:145,y:155-yy),control2:CGPoint(x:186,y:100-yy))
                        
                        
                        path.addCurve (to:CGPoint(x:33,y:137-yy ),control1:CGPoint(x:203,y:226-yy),control2:CGPoint(x:19,y:226-yy))
                        
                        
                    }
                    
                    
                    
                    Path{
                        (path)in
                        path.move(to:CGPoint(x:184,y:140-yy))
                        path.addCurve (to:CGPoint(x:45,y:142-yy ),control1:CGPoint(x:165,y:163-yy),control2:CGPoint(x:72,y:165-yy))
                        path.addQuadCurve(to:CGPoint(x:45,y:122-yy),control:CGPoint(x:39,y:132-yy))
                        path.addCurve (to:CGPoint(x:116,y:143-yy ),control1:CGPoint(x:62,y:113-yy),control2:CGPoint(x:92,y:143-yy))
                        path.addCurve (to:CGPoint(x:183,y:125-yy ),control1:CGPoint(x:139,y:143-yy),control2:CGPoint(x:174,y:119-yy))
                    }.fill(Color.white)
                    Path{
                        (path)in
                        path.move(to:CGPoint(x:41,y:176-yy))
                        path.addLine(to:CGPoint(x:52,y:176-yy))
                        path.addLine(to:CGPoint(x:57,y:185-yy))
                        path.addCurve (to:CGPoint(x:63,y:191-yy ),control1:CGPoint(x:62,y:183-yy),control2:CGPoint(x:65,y:188-yy))
                        path.addQuadCurve(to:CGPoint(x:166,y:190-yy),control:CGPoint(x:110,y:200-yy))
                        path.addCurve (to:CGPoint(x:172,y:182-yy ),control1:CGPoint(x:162,y:185-yy),control2:CGPoint(x:165,y:181-yy))
                        path.addCurve (to:CGPoint(x:186,y:173-yy ),control1:CGPoint(x:171,y:174-yy),control2:CGPoint(x:175,y:172-yy))
                        path.addCurve(to:CGPoint(x:40,y:176-yy ),control1:CGPoint(x:169,y:209-yy),control2:CGPoint(x:77,y:218-yy))
                        
                    }.fill(Color.white)
                }
                
                Group{//eye nose
                    Capsule().frame(width:7,height:9).offset(x:-320,y:-260)
                    Capsule().frame(width:7,height:9).offset(x:-255,y:-260)
                    Capsule().frame(width:3,height:4).offset(x:-318,y:-260)
                        .foregroundColor(.white)
                    Capsule().frame(width:3,height:4).offset(x:-257 ,y:-260).foregroundColor(.white)
                    Path{(path)in
                        path.move(to:CGPoint(x:102,y:91-yy))
                        path.addQuadCurve(to:CGPoint(x:101,y:103-yy),control:CGPoint(x:99,y:95-yy))
                    }
                    
                    
                    Path{(path)in
                        path.move(to:CGPoint(x:125,y:88-yy))
                        path.addQuadCurve(to:CGPoint(x:125,y:102-yy),control:CGPoint(x:128,y:97-yy))
                    }
                    Path{(path)in
                        path.move(to:CGPoint(x:95,y:104-yy))
                        path.addQuadCurve(to:CGPoint(x:92,y:121-yy),control:CGPoint(x:86,y:109-yy))
                    }.stroke()
                    Path{(path)in
                        path.move(to:CGPoint(x:139,y:104-yy))
                        path.addQuadCurve(to:CGPoint(x:139,y:122-yy),control:CGPoint(x:142,y:114-yy))
                    }.stroke()
                }
               
                
                
            }.offset(x:330,y:189)
            //Text("Hello, world!")
                //.padding()
            /*NavigationLink(destination: secondView()) {
             
             Text("hello")
             }.offset(x:45,y:80)*/
            
        }
        .padding()
        
    }
    
}
struct Leaf: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to:CGPoint (x: rect.width,y: 0))
            path.addQuadCurve(to:CGPoint(x:0,y:rect.height),control:CGPoint(x:rect.width/5,y:rect.height/5))
            path.addQuadCurve(to:CGPoint(x:rect.width,y:0),
                              control:CGPoint(x:rect.width*17/20,y:rect.height*13/15))
        }
        
    }
    
    
}

struct LeafView:View{
    
    
    var positionX:CGFloat=0
    var positionY:CGFloat=0
    var body:some View{
        Leaf().fill(Color.red)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct leaf: View {
    var body: some View {
        Leaf()
            .fill(Color.red)
            .frame(width:40,height:45)
    }
}

