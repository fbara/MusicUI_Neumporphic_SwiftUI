//
//  TopRow.swift
//  MusicUI_Neumporphic_SwiftUI
//
//  Created by Frank Bara on 5/30/20.
//  Copyright © 2020 BaraLabs. All rights reserved.
//

import SwiftUI

struct TopRow: View {
    
    @State var circleTapped = false
    @State var circlePressed = false
    
    var body: some View {
        HStack(spacing: 30) {
            ZStack {
                Image(systemName: "arrow.left")
                    .font(.system(size: 25, weight: .bold))
                    .offset(x: circlePressed ? -90 : 0, y: circlePressed ? -90 : 0)
                    .rotation3DEffect(Angle(degrees: circlePressed ? 20 : 0), axis: (x: 10, y: -10, z: 0))
            }
            .frame(width: 60, height: 60)
            .background(
                ZStack {
                    Circle()
                        .fill(Color("Background"))
                        .frame(width: 60, height: 60)
                        .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                        .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
                }
            )
            
            Text("Now Playing")
                .font(.system(size: 20, weight: .heavy, design: .rounded))
                .padding()
            ZStack {
                Image(systemName: "ellipsis")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(Color("ButtonText"))
                    .offset(x: circlePressed ? -90 : 0, y: circlePressed ? -90 : 0)
                    .rotation3DEffect(Angle(degrees: circlePressed ? 20 : 0), axis: (x: 10, y: -10, z: 0))
            }
            .frame(width: 60, height: 60)
            .background(
                ZStack {
                    Circle()
                        .fill(Color("Background"))
                        .frame(width: 60, height: 60)
                        .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                        .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
                }
            )
                
                .scaleEffect(circleTapped ? 1.2 : 1)
                .onTapGesture(count: 1) {
                    self.circleTapped.toggle()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        self.circleTapped = false
                    }
            }
        }.padding()
    }
}

struct TopRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TopRow()
                .previewLayout(.sizeThatFits)
        }
    }
}
