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
        VStack (spacing: 20){
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                //Action
                isOnBoardingViewActive = false
            }) {
                Text("Start")
            }
        }// : VSTACK
    }
}

#Preview {
    OnBoardingView()
}
