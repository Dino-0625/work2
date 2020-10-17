//
//  TextEditor.swift
//  work2
//
//  Created by tsui erh li on 2020/10/17.
//

import SwiftUI

struct TextEditorr: View {
    @State private var messages : String = "123"
    @State private var vvvvv : String = ""
    @State private var name : String = ""

    var body: some View {
        /**/
        ZStack {
            Color("Color-3").scaledToFill().frame(minWidth:0,maxWidth:.infinity).edgesIgnoringSafeArea(.all)
            VStack {
                Text("留言板")
                TextEditor(text: $messages).foregroundColor(.blue)
                    .frame(width: 300.0, height: 200.0).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 5))
                
                
               // TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $messages)
                TextField("輸入文字", text: $name, onEditingChanged: { (editing) in
                            print("onEditingChanged", editing)
                         }) {
                            print(name)
                         }
                         .textFieldStyle(RoundedBorderTextFieldStyle())
                         .padding()
                         Button("印出文字") {
                            print(name)
                         }
            }
            .navigationBarTitle(Text("Text Board"),displayMode: .inline)
        }
       
    }
}

struct TextEditorr_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorr()
    }
}
