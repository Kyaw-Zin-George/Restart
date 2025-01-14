//
//  ContentView.swift
//  Restart
//
//  Created by Kyaw Thant Zin(George) on 1/14/25.
//

import SwiftUI

struct ContentView: View{
    
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    
    
    var body: some View {
        ZStack{
            if isOnBoardingViewActive {
                OnBoardingView()
            }else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
