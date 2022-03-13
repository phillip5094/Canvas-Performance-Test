//
//  ContentView.swift
//  Canvas-Performance-Test
//
//  Created by Philip on 2022/03/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: MultipleShapeView()) {
                    Text("Multiple Shape")
                }
                
                NavigationLink(destination: MultiCanvasView()) {
                    Text("Multiple Canvas")
                }
                
                NavigationLink(destination: MultiImageView()) {
                    Text("Multiple Image")
                }
            }
            .navigationTitle("Card Views")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
