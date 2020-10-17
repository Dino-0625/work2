//
//  Introduction.swift
//  work2
//
//  Created by tsui erh li on 2020/10/10.
//

import SwiftUI

struct Introduction: View {
    @State var background:String="ocean"
    @State var show = false
    @State var show2=false
    @State private var moveee : CGFloat = 180
    var scropic = ["ContentView","secondView"]
    var body: some View {
        NavigationView{
            ZStack {
                ChangeView(pic:background)
                VStack {
                    ScrollView(.horizontal){
                        HStack(spacing:30){
                            NavigationLink(
                                destination: Tabview()) {
                                VStack{
                                    Text("homework1").foregroundColor(.yellow).bold()
                                    scrollcoda(img:"coda")
                                }
                                
                            }
                            
                            NavigationLink(destination:Music()) {
                                
                                VStack {
                                    Text("music List").foregroundColor(.yellow).bold()
                                    scrollcoda(img:"coda")
                                }
                            }
                            NavigationLink(
                                destination: LikeWebView()
                            ){
                                VStack {
                                    Text("Web").foregroundColor(.yellow).bold()
                                    scrollcoda(img:"coda")
                                }
                                
                            }
                            NavigationLink(
                                destination: FavoritePlayer()){
                                VStack{
                                    Text("Players").foregroundColor(.yellow).bold()
                                    scrollcoda(img:"coda")
                                }
                            }
                            NavigationLink(
                                destination: AppIcon()){
                                VStack{
                                    Text("CgIcon").foregroundColor(.yellow).bold()
                                    scrollcoda(img:"coda")
                                }
                            }
                            NavigationLink(
                                destination: Lazzygrid()){
                                
                                VStack{
                                    Text("BallTeam").foregroundColor(.yellow).bold()
                                    scrollcoda(img:"coda")
                                }
                            }
                            NavigationLink(
                                destination: Movie()){
                                
                                VStack{
                                    Text("Movie").foregroundColor(.yellow).bold()
                                    scrollcoda(img:"coda")
                                }
                            }
                            NavigationLink(
                                destination: TextEditorr()){
                                
                                VStack{
                                    Text("Text").foregroundColor(.yellow).bold()
                                    scrollcoda(img:"coda")
                                }
                            }
                        }.scaledToFit()
                    }
                    CodaView(sentence:"hi",pic:"coda",appeartime: 2)
                    CodaView(sentence:"hi",pic:"coda2",appeartime: 5)
                    CodaView(sentence:"我是...",pic:"coda",appeartime: 8)
                    
                    Button(show2 ? "disert":"ocean"){
                        self.show2.toggle()
                        if (show2){
                            background = "dissertt"}
                        else {background = "ocean"}
                    }.foregroundColor(Color.green).padding().background(Capsule().foregroundColor(Color.yellow)).frame(width:100,height:30).offset(x:120)
                    
                }.position(x:180 , y:190 )
                /*Button(show ? "show":"hide"){
                    if(show){
                        moveee+=40
                    }
                    else{
                        moveee=0
                    }
                    self.show.toggle()
                }.animation(nil).offset(x: 0, y: 100)*/
                HStack (spacing:20){
                    Image("banana").resizable().frame(width: 150, height: 100).offset(x:0,y:-moveee).animation(Animation.easeInOut(duration:1).repeatForever(autoreverses: true)).position(x:70,y:500)
                    
                    Text("Hi 這是我的首頁").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).bold().padding().background(Capsule().foregroundColor(Color.green)).frame(width:200,height:30).offset(x:-60,y:-15)
                }.offset(x:0,y:180)
                
                .navigationBarTitle(Text("Introduction"),displayMode: .inline)
            }
        }
    }
}

struct Introduction_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Introduction()
            //Introduction()
        }
    }
}

struct CodaView: View {
    @State private var show=false
    var sentence : String
    var pic :String
    var appeartime : Double
    
    var body: some View {
        VStack {
            HStack{
                Image(pic).resizable().scaledToFill().frame(width:60,height:60).background(Color.black).clipShape(Circle())
                    .shadow(radius:10)
                Text(sentence).bold().padding().background(Capsule().foregroundColor(Color.yellow)).frame(width:200,height:50)
            }.transition(
                .slide)
        }.animation(.linear(duration: appeartime)).offset(x:0,y:0).onAppear{
            //show = true
        }
    }
}

struct scrollcoda: View {
    var img : String
    var body: some View {
        Image(img).resizable().scaledToFill().frame(width:60,height:60).background(Color.black).clipShape(Circle())
            .shadow(radius:10)
    }
}

struct ChangeView: View {
    var pic:String
    var body: some View {
        Image(pic).resizable().scaledToFill().frame(minWidth:0,maxWidth:.infinity).edgesIgnoringSafeArea(.all)
    }
}

/*struct intro: View {
    @State var background:String="ocean"
    var show2 :Bool
    var body: some View {
        VStack() {
            ScrollView(.horizontal){
                HStack(spacing:20){
                    NavigationLink(
                        destination: work_4()) {
                        VStack{
                            Text("First work").foregroundColor(.yellow).bold()
                            scrollcoda(img:"coda")
                        }
                        
                    }
                    
                    NavigationLink(destination:Music_List()) {
                        VStack {
                            Text("music List").foregroundColor(.yellow).bold()
                            scrollcoda(img:"coda")
                        }
                    }
                    NavigationLink(
                        destination: LikeWebView()
                    ){
                        scrollcoda(img:"coda")
                    }
                    NavigationLink(
                        destination: FavoritePlayer()){
                        VStack{
                            Text("FavoritePlayer").foregroundColor(.yellow).bold()
                            scrollcoda(img:"coda")
                        }
                    }
                    NavigationLink(
                        destination: AppIcon()){
                        VStack{
                            Text("ChangeIcon").foregroundColor(.yellow).bold()
                            scrollcoda(img:"coda")
                        }
                    }
                    NavigationLink(
                        destination: Lazzygrid()){
                        
                        VStack{
                            Text("ChangeIcon").foregroundColor(.yellow).bold()
                            scrollcoda(img:"coda")
                        }
                    }
                    
                    
                }
            }.offset(x:0,y:0)
            CodaView(sentence:"hi",pic:"coda",appeartime: 2)
            /*CodaView(sentence:"hi",pic:"coda2",appeartime: 5)
            CodaView(sentence:"我是...",pic:"coda",appeartime: 8)*/
            ScrollView {
                TextEditor(text: /*@START_MENU_TOKEN@*/.constant("Placeholder")/*@END_MENU_TOKEN@*/).accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
            }
            Button(show2 ? "dissert":"ocean"){
                show2.toggle()
                if (show2){
                    background = "dissert"}
                else {background = "ocean"}
            }.foregroundColor(Color.green)
            
        }.position(x:150 , y:180 )
        .navigationBarTitle(Text("Introduction"),displayMode: .inline)
    }
}*/


