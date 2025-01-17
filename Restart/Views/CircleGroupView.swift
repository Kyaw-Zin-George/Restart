//
//  CircleGroupView.swift
//  Restart
//
//  Created by Kyaw Thant Zin(George) on 1/17/25.
//

import SwiftUI

struct CircleGroupView: View {
    //MARK: - PROPERTY
    @State var shapeColor : Color
    @State var shapeOpacity : Double
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity),lineWidth: 40)
                .frame(width: 260, height: 260,alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity),lineWidth: 80)
                .frame(width: 260, height: 260,alignment: .center)
            
        }//: ZSTACK
    }
}

//MARK: - PREVIEW
#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea()
        CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
    }
}
