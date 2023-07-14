//
//  DachRun.swift
//  NC1
//
//  Created by OLING on 2023/06/03.
//

import SwiftUI
import Lottie


struct DachRun: View {
    
    @State private var progress = 1.0
    @State private var count = 10
    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    
    var body: some View {
        ZStack{
            Image("Background2")
                .resizable()

            VStack{
                HStack{
                    
                    Circle()
                        .frame(alignment:.leading)
                        .scaleEffect(0.5)
                        .padding(.leading,50)
                    
                    Spacer()
                    
                    Text("100 M")
                        .padding(.trailing,100)
                        .font(.system(size:30))

                }
                    Lottiefile(filename: "NC1_dach_run",
                               loopState: false, playState: false)

                Button(action: {
                    print("round action")
                }) {
                    Text("Run!")
                        .frame(width: 60, height: 60)
                        .foregroundColor(Color.black)
                        .background(Color.orange)
                        .clipShape(Circle())
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    
    struct DachRun_Previews: PreviewProvider {
        static var previews: some View {
            DachRun()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
