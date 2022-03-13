//
//  MultiCanvasView.swift
//  Canvas-Performance-Test
//
//  Created by Philip on 2022/03/14.
//

import SwiftUI

struct MultiCanvasView: View {
    var body: some View {
        ZStack {
            Color(red: 214/255, green: 232/255, blue: 248/255)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                ForEach(1...50, id: \.self) { i in
                    CardCanvasView(rows: 7, cols: 21)
                }
            }
            .navigationTitle("50 Canvas Card")
        }
    }
}

struct MultiCanvasView_Previews: PreviewProvider {
    static var previews: some View {
        MultiCanvasView()
    }
}
