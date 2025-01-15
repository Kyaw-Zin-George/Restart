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
                    ZStack{
                        Circle()
                            .stroke(.white.opacity(0.2),lineWidth: 40)
                            .frame(width: 260, height: 260,alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2),lineWidth: 80)
                            .frame(width: 260, height: 260,alignment: .center)
                        
                        
                    }//: ZSTACK
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
                   
                    //4: CIRCLE (DRAGGABLE)
                }//: Footer
                .frame(height: 80,alignment: .center)
                .padding()
                
            }// : VSTACK
        }// : ZSTACK
    }
}

#Preview {
    OnBoardingView()
}
