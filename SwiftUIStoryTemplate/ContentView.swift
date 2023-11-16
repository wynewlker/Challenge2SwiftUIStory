import SwiftUI

struct ContentView: View {

//    var body: some View {
//        TabView {
//            Chapter1View()
//                .tabItem {
//                    Label("Chapter 1", systemImage: "1.circle")
//                }
//            Chapter2View()
//                .tabItem {
//                    Label("Chapter 2", systemImage: "2.circle")
//                }
//            Chapter3View()
//                .tabItem {
//                    Label("Chapter 3", systemImage: "3.circle")
//                }
//            Chapter4View()
//                .tabItem {
//                    Label("Chapter 4", systemImage: "4.circle")
//                }
//            chapter5View()
//                .tabItem {
//                    Label("Chapter 5", systemImage: "5.circle")
   
        var body: some View {
        NavigationView {
            ZStack {
                Image("cover")
                    .resizable()
                    .ignoresSafeArea()

                VStack {
                    Spacer()
                    
                    NavigationLink(destination: Chapter1View()) {
                        ChapterTitleView(title: "THE SLAUGHTER HOUSE", author: "By LaWayne")
                    }
                    Spacer()
                    
                    NavigationLink(destination: Chapter2View()) {
                        ChapterTitleView(title: "THE BROWNS", author: "By Stephanie")
                    }
                    Spacer()

                    NavigationLink(destination: Chapter3View()) {
                        ChapterTitleView(title: "PET CEMETERY", author: "By Olga")
                    }
                    Spacer()

                    NavigationLink(destination: Chapter4View()) {
                        ChapterTitleView(title: "THE NOISE IN THE ATTIC", author: "By Walter")
                    }

                    Spacer()

                    NavigationLink(destination: Chapter5View()) {
                        ChapterTitleView(title: "SMALL TOWNS", author: "By Calil")
                    }
                }
                .padding(.top, 150)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ChapterTitleView: View {
    let title: String
    let author: String

    var body: some View {
        VStack {
            Text(title)
                .bold()
                .foregroundColor(.black)
                .font(Font.custom("DancingScript-Bold", size: 20))
            
            Text(author)
                .bold()
                .foregroundColor(.black)
                .font(Font.custom("DancingScript-Bold", size: 17))
        }
    }
}
#Preview {
    ContentView()
}
