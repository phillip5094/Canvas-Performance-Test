//
//  CardCanvasView.swift
//  Canvas-Performance-Test
//
//  Created by Philip on 2022/03/14.
//

import SwiftUI

struct CardCanvasView: View {
    var rows: Int
    var cols: Int
    var body: some View {
        Canvas { context, size in
            for r in 0..<rows {
                let rowCols = (r % 2 == 0) ? cols: cols - 1
                for c in 0..<rowCols {
                    let w = size.width / CGFloat(cols)
                    let h = size.height / CGFloat(rows)
                    var x = w * CGFloat(c)
                    var y = h * CGFloat(r)
                    if r % 2 == 1 {
                        x = w * CGFloat(c) + w * 0.5
                        y = h * CGFloat(r)
                    }
                    context.fill(DiamondShape().path(in: CGRect(x: x, y: y, width: w, height: h)), with: .color(red: 250/255, green: 100/255, blue: 90/255))
                }
            }
        }
        .padding(40)
        .background(Color(red: 30/255, green: 40/255, blue: 60/255))
        .frame(width: 300, height: 200)
        .cornerRadius(30)
        .overlay(RoundedRectangle(cornerRadius: 40)
                    .stroke(Color(red: 0.93, green: 0.94, blue: 0.77), lineWidth: 50)
                    .cornerRadius(30))
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(red: 250/255, green: 100/255, blue: 90/255), lineWidth: 20)
                    .cornerRadius(15)
                    .padding(25))
        .overlay(RoundedRectangle(cornerRadius: 30)
                    .stroke(.black, lineWidth: 2)
                    .cornerRadius(30))
    }
}

struct CardCanvasView_Previews: PreviewProvider {
    static var previews: some View {
        CardCanvasView(rows: 7, cols: 21)
    }
}
