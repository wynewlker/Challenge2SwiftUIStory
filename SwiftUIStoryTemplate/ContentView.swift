import SwiftUI

// Use the relevant folders and swift files to code your chapter of the story. Keep ContentView as-is, unless you want a different type of navigation in your story.
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("cover")
                        .resizable()
                        .ignoresSafeArea()
                    NavigationLink(destination: {
                        Chapter1View()
                    }, label: {
                                VStack {
                                    Text("THE SLAUGHTER HOUSE")
                                        .bold()
                                        .foregroundColor(.black)
                                        .font(Font.custom("DancingScript-Bold", size: 20))
                                    Text("By LaWayne")
                                        .bold()
                                        .foregroundColor(.black)
                                        .font(Font.custom("DancingScript-Bold", size: 17))
                                }
                                .padding(.bottom,235)
                            
                    })
                    NavigationLink(destination: {
                        Chapter2View()
                    }, label: {
                        HStack{
                            VStack {
                                Spacer()
                                Text("THE BROWNS")
                                Text("By Stephanie")
                            }
                        }
                    })
                    NavigationLink(destination: {
                        Chapter3View()
                    }, label: {
                        VStack {
                            Text("PET CEMETERY")
                                .bold()
                                .foregroundColor(.black)
                                .font(Font.custom("DancingScript-Bold", size: 20))
                            Text("By Olga")
                                .bold()
                                .foregroundColor(.black)
                                .font(Font.custom("DancingScript-Bold", size: 17))
                        }
                        .padding(.top,155)
                    })
                    NavigationLink(destination: {
                        Chapter4View()
                    }, label: {
                            Spacer()
                            VStack {
                                Spacer()
                                Text("Chapter 4")
                                Text("hfhgdjfg")
                            }
                    })
                    
                    Spacer()
                    NavigationLink(destination: {
                        Chapter5View()
                    }, label: {
                        
                        VStack {
                    Text("The Noise In The Attic ")
                    Text("Remake by Walter")
                        }
                        .padding(.top,525)
                    })
                    Spacer()
                }
                .navigationBarBackButtonHidden(true)
            }
    }
       
        
        
        
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
    }
}

#Preview {
    ContentView()
}
