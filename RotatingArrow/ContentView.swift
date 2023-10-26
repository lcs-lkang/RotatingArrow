//
//  ContentView.swift
//  ArrowExample
//
//  Created by Russell Gordon on 2023-10-26.
//
import SwiftUI

struct Arrow: Shape {
    func path(in rect: CGRect) -> Path {
        
        // Create a path
        var path = Path()
        
        // Define the path
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY/3*2))
        path.addLine(to: CGPoint(x: rect.maxX/3*2, y: rect.maxY/3*2))
        path.addLine(to: CGPoint(x: rect.maxX/3*2, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY/2*1))
        path.addLine(to: CGPoint(x: rect.maxX/3*2, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX/3*2, y: rect.maxY/3*1))
        path.addLine(to: CGPoint(x: rect.maxX/3*2, y: rect.maxY/3*1))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY/3*1))
//         Return a path
        return path
    }
    
}

struct ContentView: View {
    
    @State var selectedAngle: Double = 0.0
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Arrow()
                .aspectRatio(1.0, contentMode: .fit)
                .rotationEffect(.degrees(selectedAngle))
            
            Spacer()
            
            Slider(value: $selectedAngle, in: 0...360)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
