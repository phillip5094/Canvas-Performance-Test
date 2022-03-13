//
//  CardImageView.swift
//  Canvas-Performance-Test
//
//  Created by Philip on 2022/03/14.
//

import SwiftUI

struct CardImageView: View {
    var body: some View {
        Image("card-background")
            .resizable()
            .scaledToFill()
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .frame(width: 300, height: 200)
            .cornerRadius(30)
            .overlay(RoundedRectangle(cornerRadius: 30)
                        .stroke(.black, lineWidth: 2)
                        .cornerRadius(30))
    }
}

struct CardImageView_Previews: PreviewProvider {
    static var previews: some View {
        CardImageView()
    }
}
