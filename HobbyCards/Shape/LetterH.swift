//
//  HockeyStick.swift
//  HobbyCards
//
//  Created by Susie Wang on 2024-12-17.
//

import SwiftUI

struct LetterH: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.2, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.2, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        
        path.move(to: CGPoint(x: rect.maxX * 0.8, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.8, y: rect.maxY))
        path.closeSubpath()
        
        path.move(to: CGPoint(x: rect.maxX * 0.2, y: rect.midY - rect.height * 0.1))
        path.addLine(to: CGPoint(x: rect.maxX * 0.8, y: rect.midY - rect.height * 0.1))
        path.addLine(to: CGPoint(x: rect.maxX * 0.8, y: rect.midY + rect.height * 0.1))
        path.addLine(to: CGPoint(x: rect.maxX * 0.2, y: rect.midY + rect.height * 0.1))
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    LetterH()
}
