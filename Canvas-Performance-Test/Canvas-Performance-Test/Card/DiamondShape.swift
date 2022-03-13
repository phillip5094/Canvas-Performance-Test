//
//  DiamondShape.swift
//  Canvas-Performance-Test
//
//  Created by Philip on 2022/03/14.
//

import SwiftUI

struct DiamondShape: Shape {
    func path(in rect: CGRect) -> Path {
        let size = min(rect.width, rect.height)
        let xOffset = (rect.width > rect.height) ? (rect.width - rect.height) / 2.0 : 0.0
        let yOffset = (rect.width > rect.height) ? 0.0 : (rect.height - rect.width) / 2.0
        
        func offsetPoint(p: CGPoint) -> CGPoint {
            return CGPoint(x: p.x + xOffset + rect.origin.x, y: p.y + yOffset + rect.origin.y)
        }
        
        return Path { path in
            path.move(to: offsetPoint(p: CGPoint(x: 0, y: size * 0.5)))
            path.addQuadCurve(to: offsetPoint(p: CGPoint(x: size * 0.5, y: 0)),
                              control: offsetPoint(p: CGPoint(x: size * 0.4, y: size * 0.4)))
            path.addQuadCurve(to: offsetPoint(p: CGPoint(x: size, y: size * 0.5)),
                              control: offsetPoint(p: CGPoint(x: size * 0.6, y: size * 0.4)))
            path.addQuadCurve(to: offsetPoint(p: CGPoint(x: size * 0.5, y: size)),
                              control: offsetPoint(p: CGPoint(x: size * 0.6, y: size * 0.6)))
            path.addQuadCurve(to: offsetPoint(p: CGPoint(x: 0, y: size * 0.5)),
                              control: offsetPoint(p: CGPoint(x: size * 0.4, y: size * 0.6)))
            path.closeSubpath()
        }
    }
}
