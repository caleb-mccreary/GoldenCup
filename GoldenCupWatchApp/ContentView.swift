//
//  ContentView.swift
//  GoldenCup Watch App
//
//  Created by Caleb McCreary on 9/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedGrams: Int = 50
    var body: some View {
        VStack {
            Picker(selection: $selectedGrams) {
                ForEach(0..<100) {
                    Text($0.formatted())
                }
            } label: {
                Text("Coffee (g)")
                    .font(.system(size: 14))
                    .bold()
            }
            .padding(.bottom, 4)
            Spacer()
            Text("Water (g)")
                .font(.system(size: 14))
                .bold()
            Text((selectedGrams * 16).formatted())
        }
        .padding(.all, 8)
    }
}

#Preview {
    ContentView()
}
