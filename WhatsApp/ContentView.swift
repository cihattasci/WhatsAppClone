//
//  ContentView.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 17.04.2023.
//

import SwiftUI

extension Font {
    static let topRow = Font.custom("", size: 16).bold()
    static let bottomRow = Font.custom("", size: 12).bold()
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

struct ContentView: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = .gray
    }
    
    @State private var selection = 4
    
    var body: some View {
        TabView(selection: $selection){
            Situation().navigationBarBackButtonHidden(true)
                .tabItem{
                    Label("Durum", systemImage: "circle.circle")
                }
                .tag(1)
            Calls().navigationBarBackButtonHidden(true)
                .tabItem{
                    Label("Aramalar", systemImage: "phone")
                }
                .tag(2)
            Communities().navigationBarBackButtonHidden(true)
                .tabItem{
                    Label("Topluluklar", systemImage: "person.3")
                }
                .tag(3)
            Chats().navigationBarBackButtonHidden(true)
                .tabItem{
                    Label("Sohbetler", systemImage: "message")
                }
                .tag(4)
            Settings().navigationBarBackButtonHidden(true)
                .tabItem{
                    Label("Ayarlar", systemImage: "gear")
                }
                .tag(5)
        }.tint(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
