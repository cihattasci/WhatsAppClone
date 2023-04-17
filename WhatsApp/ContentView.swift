//
//  ContentView.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 17.04.2023.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = .black
        UITabBar.appearance().unselectedItemTintColor = .gray
    }
    var body: some View {
        TabView{
            Situation().navigationBarBackButtonHidden(true)
                .tabItem{
                    Label("Durum", systemImage: "circle.circle")
                }
            Calls().navigationBarBackButtonHidden(true)
                .tabItem{
                    Label("Aramalar", systemImage: "phone")
                }
            Communities().navigationBarBackButtonHidden(true)
                .tabItem{
                    Label("Topluluklar", systemImage: "person.3")
                }
            Chats().navigationBarBackButtonHidden(true)
                .tabItem{
                    Label("Sohbetler", systemImage: "message")
                }
            Settings().navigationBarBackButtonHidden(true)
                .tabItem{
                    Label("Ayarlar", systemImage: "gear")
                }
        }.tint(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
