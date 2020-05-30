//
//  AlbumView.swift
//  MusicUI_Neumporphic_SwiftUI
//
//  Created by Frank Bara on 5/30/20.
//  Copyright © 2020 BaraLabs. All rights reserved.
//

import SwiftUI

struct AlbumView: View {
    
    @State var circleTapped = false
    @State var circlePressed = false
    
    var body: some View {
        VStack(spacing: 10) {
            ZStack {
                Image("cover")
                .resizable()
                    .renderingMode(.original)
                    .frame(width: 300, height: 300)
                .blur(radius: 2)
                .offset(x: circlePressed ? -90 : 0, y: circlePressed ? -90 : 0)
                .rotation3DEffect(Angle(degrees: circlePressed ? 20 : 0), axis: (x: 10, y: -10, z: 0))
                .clipShape(Circle())
                .shadow(color: Color("LightShadow"), radius: 10, x: -10, y: -10)
                .shadow(color: Color("DarkShadow"), radius: 10, x: 10, y: 10)
            }
            Spacer()
        }
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AlbumView().previewLayout(.sizeThatFits)
        }
    }
}
