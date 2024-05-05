//
//  File.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI


struct polygon : Shape {
    func path(in rect: CGRect) -> Path {

        var xPos : CGFloat = 0
        var yPos : CGFloat = rect.height * 0.75


        var polyPath = Path()
        polyPath.move(to: CGPoint(x: xPos, y: yPos))
        xPos = xPos + rect.width
        yPos = rect.height
        polyPath.addLine(to: CGPoint(x: xPos, y: yPos))
        yPos = 0
        polyPath.addLine(to: CGPoint(x: xPos, y: yPos))
        xPos = 0
        polyPath.addLine(to: CGPoint(x: xPos, y: yPos))
        return polyPath
    }
}
