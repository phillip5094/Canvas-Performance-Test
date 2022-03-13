//
//  MultiImageView.swift
//  Canvas-Performance-Test
//
//  Created by Philip on 2022/03/14.
//

import SwiftUI

struct MultiImageView: View {
    var body: some View {
        ZStack {
            Color(red: 214/255, green: 232/255, blue: 248/255)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                ForEach(1...50, id: \.self) { _ in
                    CardImageView()
                }
            }
            .navigationTitle("50 Image Card")
        }
    }
}

struct MultiImageView_Previews: PreviewProvider {
    static var previews: some View {
        MultiImageView()
    }
}
