import SwiftUI

// Use the relevant folders and swift files to code your chapter of the story. Keep ContentView as-is, unless you want a different type of navigation in your story.

struct ContentView: View {
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

//                    Spacer()
                }
                .padding(.top, 150)
//                .navigationBarBackButtonHidden(true)
            }
        }
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

        
        

//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                ZStack {
//                    Image("cover")
//                        .resizable()
//                        .ignoresSafeArea()
//                    NavigationLink(destination: {
//                        Chapter1View()
//                    }, label: {
//                                VStack {
//                                    Text("THE SLAUGHTER HOUSE")
//                                        .bold()
//                                        .foregroundColor(.black)
//                                        .font(Font.custom("DancingScript-Bold", size: 20))
//                                    Text("By LaWayne")
//                                        .bold()
//                                        .foregroundColor(.black)
//                                        .font(Font.custom("DancingScript-Bold", size: 17))
//                                }
//                                .padding(.bottom,235)
//                    })
//                    NavigationLink(destination: {
//                        Chapter2View()
//                    }, label: {
//                        HStack (alignment: .center, spacing: 70){
//                                Spacer()
//                                Text("""
//                            THE BROWNS
//                            By Stephanie
//""")
//                                    .bold()
//                                    .foregroundColor(.black)
//                                    .font(Font.custom("DancingScript-Bold", size: 20))
//                            }
//                            .padding(.bottom,75)
//                    })
//                    NavigationLink(destination: {
//                        Chapter3View()
//                    }, label: {
//                        HStack (alignment: .center, spacing: 170) {
//                            Text("""
//PET CEMETERY
//By Olga
//""")
//                                .bold()
//                                .foregroundColor(.black)
//                                .font(Font.custom("DancingScript-Bold", size: 20))
//                            Divider()
//                        }
//                        .padding(.top,155)
//                    })
//                    NavigationLink(destination: {
//                        Chapter4View()
//                    }, label: {
//                            VStack {
//                                Spacer()
//                                Text("THE NOISE IN THE ATTIC")
//                                    .bold()
//                                    .foregroundColor(.black)
//                                    .font(Font.custom("DancingScript-Bold", size: 20))
//                                Text("By Walter")
//                                    .bold()
//                                    .foregroundColor(.black)
//                                    .font(Font.custom("DancingScript-Bold", size: 17))
//                            }
//                            .padding(.bottom, 125)
//                    })
//                    NavigationLink(destination: {
//                        Chapter5View()
//                    }, label: {
//                        VStack {
//                    Text("SMALL TOWNS")
//                                .bold()
//                                .foregroundColor(.black)
//                                .font(Font.custom("DancingScript-Bold", size: 20))
//                    Text("By Calil")
//                                .bold()
//                                .foregroundColor(.black)
//                                .font(Font.custom("DancingScript-Bold", size: 17))
//                        }
//                        .padding(.top,695)
//                    })
//                }
//                .navigationBarBackButtonHidden(true)
//            }
//    }
//       
        
        
        
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
//            Chapter5View()
//                .tabItem {
//                    Label("Chapter 5", systemImage: "5.circle")
//                }
//        }
//    }
//}

#Preview {
    ContentView()
}
