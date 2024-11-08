//
//  AngleDragTest.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 07.11.24.
//

import SwiftUI
import CoreGraphics

struct AngleDragTest: View {
    let fixedPoint = CGPoint(x: 130, y: 130)
    let radius: CGFloat = 110
    @State private var angle: Angle = .zero
    
    var movablePoint: CGPoint {
        CGPoint(
            x: fixedPoint.x + radius * cos(angle.radians),
            y: fixedPoint.y + radius * sin(angle.radians)
        )
    }
    
    var body: some View {
        
        Text("Grad: \(angle.degrees.rounded().formatted(.number)) °")
            .font(.title).padding()
        
        ZStack {
            Circle()
                .stroke(Color.gray, lineWidth: 2)
                .frame(width: radius * 2, height: radius * 2)
                .position(fixedPoint)
            
            Path { path in
                path.move(to: fixedPoint)
                path.addLine(to: movablePoint)
            }.stroke(Color.blue, lineWidth: 2)
            
            Circle()
                .fill(Color.red)
                .frame(width: 10, height: 10)
                .position(movablePoint)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let deltaX = value.location.x - fixedPoint.x
                            let deltaY = value.location.y - fixedPoint.y
                            let radians = atan2(deltaY, deltaX)
                            
                            if radians >= 0 {
                                angle = Angle(radians: radians)
                            } else {
                                angle = Angle(radians: (2 * .pi) + radians)
                            }
                        }
                )
            
            Circle()
                .fill(Color.green)
                .frame(width: 10, height: 10)
                .position(fixedPoint)
        }
        .frame(maxWidth: 260, maxHeight: 260)
        .background(Color(hue: 0.2, saturation: 0.4, brightness: 0.9, opacity: 0.5))
        .clipShape(Circle())
        .rotationEffect(Angle(degrees: -90))
        
    }
}

#Preview {
    AngleDragTest()
}
