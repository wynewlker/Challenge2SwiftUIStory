//
//  chap5View.swift
//  SwiftUIStoryTemplate
//
//  Created by Calil Hall on 11/15/23.
//

import SwiftUI

struct Chapter5View: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Image("Chap5BookCover")
                    .resizable()
                    .ignoresSafeArea()
                
                
                VStack {
                    Spacer()
                    NavigationLink(destination: Page_1(), label: {
                        Image("startButton")
                    }
              )
                    
                    
                    
                }
                
            }
        }
    }
}
#Preview {
    Chapter5View()
}
