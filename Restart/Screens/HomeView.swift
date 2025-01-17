//
//  HomeView.swift
//  Restart
//
//  Created by Kyaw Thant Zin(George) on 1/14/25.
//

import SwiftUI

struct HomeView: View {
    //MARK: PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive : Bool = false
    //MARK: BODY
    
    var body: some View {
        VStack {
          //MARK: - HEADER
            Spacer()
            
            Image("character-2")
                .resizable()
                .scaledToFit()
                .padding()
            //MARK: - CENTER
            Text("The time that leads to matery id dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .padding()
                .multilineTextAlignment(.center)
           
            
            //MARK: - FOOTER
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        }
    }
}

#Preview {
    HomeView()
}
