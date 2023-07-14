//
//  component view.swift
//  NC1
//
//  Created by OLING on 2023/06/01.
//

import SwiftUI

struct component_view: View {
    var body: some View {
        
        VStack{
            Gauge(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, in: /*@START_MENU_TOKEN@*/0...1/*@END_MENU_TOKEN@*/) {
                Text("gague")
            }
            GroupBox(label: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/) {
                Text("뭐가 있나")
            }
            Text("Hello, World!")
            
            Form {
                Text("form")
                Text("onho")
            }
            Link(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=URL@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*/Text("Link")/*@END_MENU_TOKEN@*/
            }
            List {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
            Image("Oling")                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(.black.opacity(0.1))
        }
         
       
    }
}

struct component_view_Previews: PreviewProvider {
    static var previews: some View {
        component_view()
    }
}
