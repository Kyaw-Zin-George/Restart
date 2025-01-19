//
//  OnBoardingView.swift
//  Restart
//
//  Created by Kyaw Thant Zin(George) on 1/14/25.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: - PROPERTY
    //this value will only be added to the property when the program does not find the ONBOARDING key previously set in the device's permanent storage
    //this value will be ignored when the running program finds a previously creating ONBOARDING key
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    
    @State private var buttonWidth : Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset : CGFloat = 0
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            VStack (spacing: 20){
               //MARK: - HEADER
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Share")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                    
                    Text("""
                    It's not how much we give but
                    how much love we put into giving
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                }
                //MARK: - CENTER
                ZStack{
                    CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }// : CENTER
                Spacer()
                //MARK: - FOOTER
                ZStack{
                    //PARTS OF CUSTOM BUTTON
                    
                    //1.BACKGROUND (STATIC)
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                        
                    //2.CALL-TO-ACTION (STATIC)
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .offset(x:20)
                    //3. CAPSULE (DYNAMIC)
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: buttonOffset + 80)
                        Spacer()
                    }
                    //4. CIRCLE (DRAGGABLE)
                    HStack {
                        ZStack{
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24,weight: .bold))
                        }
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 80,alignment: .center)
                        .offset(x:buttonOffset)
                        .gesture(DragGesture()
                            .onChanged{
                                gesture in
                                //only run when the dragging has been started in the right direction
                                if gesture.translation.width > 0  && buttonOffset <= buttonWidth - 80 {
                                    buttonOffset = gesture.translation.width
                                }
                            }
                            .onEnded{ _ in
                                if buttonOffset > buttonWidth / 2 {
                                    buttonOffset = buttonWidth - 80
                                    isOnBoardingViewActive = false
                                } else{
                                    buttonOffset = 0
                                }
                            }
                        )//Gesture
                        Spacer()
                    }
                }//: Footer
                .frame(width: buttonWidth ,height: 80,alignment: .center)
                .padding()
                
            }// : VSTACK
        }// : ZSTACK
    }
}

#Preview {
    OnBoardingView()
}
