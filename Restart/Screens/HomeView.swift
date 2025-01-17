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
            
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.3)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            //MARK: - CENTER
            Text("The time that leads to matery id dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .padding()
                .multilineTextAlignment(.center)
           
            
            //MARK: - FOOTER
            Spacer()
            Button(action: {
                isOnboardingViewActive = true
            }) {
                //horizontally aligned by default
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3,design: .rounded))
                    .fontWeight(.bold)
            }//: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }//: VSTACK
    }
}

#Preview {
    HomeView()
}
