//
//  App Storage.swift
//  NC1
//
//  Created by OLING on 2023/06/30.
//

import SwiftUI

struct App_Storage: View {
    @State var currentUserName: String?
    
    var body: some View {
        GeometryReader { geometry in
            ZStack() {
                VStack{
                    Spacer()
                    
                    HStack(spacing: -1) {
                        
                        Spacer()
                        
                        Image("waist")
                        Image("waist")
                        Image("Front")
                            .padding(.bottom,23)
                        
                        Spacer()
                    }
                    Spacer()
                }
                
            }
        }
    }
}

struct App_Storage_Previews: PreviewProvider {
    static var previews: some View {
        App_Storage()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
