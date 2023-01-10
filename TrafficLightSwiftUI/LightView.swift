//
//  LightView.swift
//  TrafficLightSwiftUI
//
//  Created by Olga Tegza on 10.01.2023.
//

import SwiftUI

struct LightView: View {
    let color: Color
    let alpha: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .opacity(alpha)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
            .padding()
    }
}
    
struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red, alpha: 1)
    }
}
