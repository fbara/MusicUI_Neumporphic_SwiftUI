//
//  ContentView.swift
//  MusicUI_Neumporphic_SwiftUI
//
//  Created by Frank Bara on 5/30/20.
//  Copyright © 2020 BaraLabs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Rectangle()
                    .fill(Color("Background"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 10) {
                    TopRow()
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
