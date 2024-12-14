import SwiftUI

struct HockeyStick: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX * 1/16, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX * 0.2, y: rect.maxY * 7/8))
        
        path.addLine(to: CGPoint(x: rect.maxX * 13/18, y: rect.maxY * 7/8))
        
        path.addLine(to: CGPoint(x: rect.maxX * 11/18, y: rect.maxY))
        
    
        path.addLine(to: CGPoint(x: rect.maxX * 3/18, y: rect.maxY))

        return path
    }
    
    
}

#Preview {
    HockeyStick()
      .padding()
}
