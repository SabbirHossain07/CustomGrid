//
//  ItemButtonStyle.swift
//  CustomGrid
//
//  Created by Sopnil Sohan on 25/10/21.
//

import SwiftUI

struct ItemButtonStyle: ButtonStyle {
    
    let cornerRadius: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label
            
            if configuration.isPressed {
                Color.black.opacity(0.2)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: Color.black.opacity(0.2), radius: 10, y: 5)
    }
}

struct ItemButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
