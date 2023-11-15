//
//  Chapter12ndview.swift
//  SwiftUIStoryTemplate
//
//  Created by LaWayne Walker on 11/14/23.
//

import SwiftUI

struct Chapter1BookScroll: View {
    var body: some View {
        ZStack {
            Image("Book scroll")
                .resizable()
                .ignoresSafeArea()
            VStack {
                ScrollView {
                    Text("""
njbhbhhvgvgnnnmnjbhgbgbgvg
kgtft
hi
""")
                    .font(Font.custom("bodoni 72", size: 30))
                        .foregroundStyle(.black)
                }
                        .padding(30)
                        Spacer()
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}
#Preview {
    Chapter1BookScroll()
}
