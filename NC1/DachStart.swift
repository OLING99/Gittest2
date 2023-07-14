//
//  DachStart.swift
//  NC1
//
//  Created by OLING on 2023/06/05.
//

import SwiftUI

struct DachStart: View {
    
    @State private var imageWidth: CGFloat = 500
    @State private var imageOffset: CGFloat = 0
    @State private var imageOffset1: CGFloat = 0
    @State private var buttonPressCount = 0
    
    @State private var start = false
    @State private var startbackground = true
    
    @State var countDownTimer = 10
    @State var timerRunning = false
    @State private var count: Int = 0
    
//    @AppStorage("\(count)") var count = "0"
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        ZStack{
            
            Lottiefile(filename: "NC1_Background", loopState: true, playState: true)
                .ignoresSafeArea(.all)
                .scaleEffect(1.1)
                .frame(width: UIScreen.main.bounds.width)
//                .resizable()
//                            .aspectRatio(contentMode: .fill)
//                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*1.1)
            
            
            VStack {
                HStack {
                    Text("\(countDownTimer)")
                        .onReceive(timer) { _ in
                            if countDownTimer > 0 && timerRunning {
                                countDownTimer -= 1
                            } else {
                                timerRunning = false
                            }
                        }
                        .font(.system(size: 30, weight: .bold))
                        .opacity(0.8)
                        .padding()
                        .frame(width: 100, height: 100)
                    
                    Spacer()
                    
                    Text("\(count)")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.orange)
                        .opacity(0.8)
                        .padding()
                        .frame(width: 100, height: 100)
                }
                .frame(width: UIScreen.main.bounds.width)
                .padding()
                .alignmentGuide(.top) { _ in 0 }
                
                Spacer()
                
                if buttonPressCount < 14 {
                    
                    ZStack{
                        
//                        Lottiefile(filename: "Dachfront",
//                                   loopState: true, playState: false)
//                        .frame(width: UIScreen.main.bounds.width)
//
                                            if buttonPressCount % 2 == 0 {
                                                Image("DachFront")
                                            } else {
                                                Image("DachFront2")
                                            }
                        
                        Image("DachMiddle")
                            .resizable()
                            .frame(width: imageWidth, height: 151)
                            .padding()
                            .offset(x: imageOffset, y:0)
                        
                        Image("DachRear")
                            .offset(x:imageOffset1, y:0)
                    }
                    
                    
                } else {
                    if countDownTimer > 0 {
                        Lottiefile(filename: "DachRun2", loopState: true, playState: true)
                            .frame(width: UIScreen.main.bounds.width,height:185)
                    }
                }
                
                if countDownTimer <= 0 {
                    Lottiefile(filename: "DachFinish", loopState: false, playState: true)
                        .frame(width: UIScreen.main.bounds.width,height:185)
                    
                    Button(action:{
                        buttonPressCount += 1
                        count += 5
                        withAnimation{
                            imageWidth += 200
                            imageOffset -= 25
                            imageOffset1 -= 35
                        }
                    }) {
                        Text("Run!")
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color.black)
                            .background(Color.gray)
                            .clipShape(Circle())
                    }
                    .padding()
                    .offset(y:-10)
                    .disabled(true)
    
                }
                
                
                
                if countDownTimer > 0 {
                    Button(action:{
                        buttonPressCount += 1
                        count += 5
                        withAnimation{
                            imageWidth += 200
                            imageOffset -= 25
                            imageOffset1 -= 35
                        }
                    }) {
                        Text("Run!")
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color.black)
                            .background(Color.orange)
                            .clipShape(Circle())
                    }
                    .padding()
                    .offset(y:-10)
                }
            }
            
            if startbackground {
                ZStack{
                   
                    Image("Cover")
                        .ignoresSafeArea(.all)
                    
                    Rectangle()
                        .ignoresSafeArea(.all)
                        .foregroundColor(.black)
                        .opacity(0.7)
                    
                }
            }
            
            if !start{
                Button(action: {
                    start = true
                    startbackground = false
                    timerRunning = true
                }) {
                    Text("Start")
                        .foregroundColor(.orange)
                        .fontWeight(.heavy)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(100)
                }
            }
        }

    }

    struct DachStart_Previews: PreviewProvider {
        static var previews: some View {
            DachStart()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
