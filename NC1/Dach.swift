//
//  Dach.swift
//  NC1
//
//  Created by OLING on 2023/06/05.
//

import SwiftUI

struct Dach: View {
    
    
//    @State private var imageWidth: CGFloat = 500
//    @State private var imageOffset: CGFloat = 0
//
//    @State var countDownTimer = 5
//    @State var timerRunning = false
//    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
//
//    var body: some View {
//        VStack {
//            Text("\(countDownTimer)")
//                .onReceive(timer) { _ in
//                    if countDownTimer > 0 && timerRunning {
//                        countDownTimer -= 1
//                    } else {
//                        timerRunning = false
//                    }
//                }
//                .font(.system(size: 20, weight: .bold))
//                .opacity(0.8)
//
//            Image("DachMiddle")
//                .resizable()
//                .frame(width: imageWidth, height: 100)
//                .padding()
//                .offset(x: imageOffset, y: 0) // Apply offset to move the image
//
//
//            Button(action: {
//                timerRunning = true
//                withAnimation {
//                    imageWidth += 400
//                    imageOffset -= 40
//                }
//            }) {
//                Text("No")
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(10)
//            }
//            .padding()
//        }
//    }
//}
    @State private var isButtonPressed = false
    @State private var isImageVisible = true
       
       var body: some View {
           ZStack {
               
               if isImageVisible {
                   Rectangle()
                       .edgesIgnoringSafeArea(.all)
                       .aspectRatio(contentMode : .fill)
                       .opacity(0.2)
               }
               if !isButtonPressed {
                   Button(action: {
                       isButtonPressed = true
                       isImageVisible = false
                   }) {
                       Text("Press Me")
                           .foregroundColor(.white)
                           .padding()
                           .background(Color.blue)
                           .cornerRadius(10)
                   }
                   .padding()
               }
           }
       }
   }

struct Dach_Previews: PreviewProvider {
    static var previews: some View {
        Dach()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
