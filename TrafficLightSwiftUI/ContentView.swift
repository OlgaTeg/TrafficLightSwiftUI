//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Olga Tegza on 10.01.2023.
//

import SwiftUI

enum Light {
    case red, yellow, green, off
}

struct ContentView: View {
    
    @State private var light = Light.off
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                VStack {
                    LightView(color: .red, alpha: light == .red ? 1 : 0.2)
                    LightView(color: .yellow, alpha: light == .yellow ? 1 : 0.2)
                    LightView(color: .green, alpha: light == .green ? 1 : 0.2)
                }
                
                Spacer()
                Button(action: {
                    switchLight()
                }) {
                    Text(light == Light.off ? "Start" : "Next")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                }
                .frame(width: 200, height: 70)
                .background(Color.blue)
                .cornerRadius(30)
                .overlay(Capsule().stroke(Color.white, lineWidth: 5))
            }
            .padding()
        }
    }
    
    private func switchLight() {
        switch light {
        case .red:
            light = .yellow
        case .yellow:
            light = .green
        case .green, .off:
            light = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
