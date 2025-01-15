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
               
                //MARK: - FOOTER
                
            }// : VSTACK
        }// : ZSTACK
    }
}

#Preview {
    OnBoardingView()
}
