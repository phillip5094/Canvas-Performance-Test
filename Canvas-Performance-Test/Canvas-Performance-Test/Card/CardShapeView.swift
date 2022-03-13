//
//  CardShapeView.swift
//  Canvas-Performance-Test
//
//  Created by Philip on 2022/03/14.
//

import SwiftUI

struct CardShapeView: View {
    var rows: Int
    var cols: Int
    
    var body: some View {
        GeometryReader { proxy in
            let width = proxy.size.width / CGFloat(cols)
            let height = proxy.size.height / CGFloat(rows)
            
            VStack(spacing: 0) {
                ForEach(0..<rows) { i in
                    let rowCols = (i % 2 == 0) ? cols: cols - 1
                    HStack(spacing: 0) {
                        ForEach(0..<rowCols) { _ in
                            DiamondShape()
                                .fill(Color(red: 250/255, green: 100/255, blue: 90/255))
                                .frame(width: width, height: height)
                        }
                    }
                }
            }
        }
        .padding(30)
        .frame(width: 300, height: 200)
        .background(Color(red: 30/255, green: 40/255, blue: 60/255))
        .cornerRadius(30)
        .overlay(RoundedRectangle(cornerRadius: 40)
                    .stroke(Color(red: 0.93, green: 0.94, blue: 0.77), lineWidth: 50)
                    .cornerRadius(30))
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(red: 250/255, green: 100/255, blue: 90/255), lineWidth: 10)
                    .cornerRadius(15)
                    .padding(20))
        .overlay(RoundedRectangle(cornerRadius: 30)
                    .stroke(.black, lineWidth: 2)
                    .cornerRadius(30))
    }
}

struct CardShapeView_Previews: PreviewProvider {
    static var previews: some View {
        CardShapeView(rows: 7, cols: 21)
    }
}
