//
//  Settings.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 17.04.2023.
//

import SwiftUI

struct Settings: View {
    @State private var search: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                List{
                    HStack{
                        Spacer()
                        Button {} label: {
                            VStack{
                                Image(systemName: "person.crop.circle.fill").font(.title2)
                                Text("Profil").padding(.top, 1).font(.caption)
                            }
                            .padding(.horizontal, 28)
                            .padding(.vertical, 10)
                            .background(Color.gray)
                            .cornerRadius(10)
                        }
                        Button {} label: {
                            VStack{
                                Image(systemName: "lock.fill").font(.title2)
                                Text("Gizlilik").padding(.top, 1).font(.caption)
                            }
                            .padding(.horizontal, 28)
                            .padding(.vertical, 10)
                            .background(Color.gray)
                            .cornerRadius(10)
                        }
                        Button {} label: {
                            VStack{
                                Image(systemName: "person.text.rectangle.fill").font(.title2)
                                Text("Kişiler").padding(.top, 1).font(.caption)
                            }
                            .padding(.horizontal, 28)
                            .padding(.vertical, 10)
                            .background(Color.gray)
                            .cornerRadius(10)
                        }
                        Spacer()
                    }
                    Section{
                        SettingsItemRow(icon: "star.square.fill",color: Color.yellow, name: "Yıldızlı Mesajlar", toNavigate: "")
                        SettingsItemRow(icon: "desktopcomputer",color: Color.green, name: "Bağlı Cihazlar", toNavigate: "")
                    }
                    
                    Section{
                        SettingsItemRow(icon: "key.viewfinder",color: Color.blue, name: "Hesap", toNavigate: "")
                        SettingsItemRow(icon: "phone.bubble.left.fill",color: Color.green, name: "Sohbetler", toNavigate: "")
                        SettingsItemRow(icon: "person.fill",color: Color.blue, name: "Avatar", toNavigate: "")
                        SettingsItemRow(icon: "square.2.stack.3d.bottom.fill",color: Color.red, name: "Bildirimler", toNavigate: "")
                        SettingsItemRow(icon: "arrow.uturn.left.square.fill",color: Color.green, name: "Saklama Alanı ve Veriler", toNavigate: "")
                    }
                    
                    Section{
                        SettingsItemRow(icon: "info.square.fill",color: Color.blue, name: "Yardım", toNavigate: "")
                        SettingsItemRow(icon: "heart.square.fill",color: Color.red, name: "Arkadaşlarınızı Davet Edin", toNavigate: "")
                    }
                }.listStyle(.insetGrouped)
            }
            .searchable(text: $search, prompt: "Ara"){
                if search.isEmpty {
                    ForEach(1..<10) { num in
                        Text("Yazılmadı \(num)")
                    }
                } else {
                    ForEach(1..<10) { num in
                        Text("Yazıldı ve sayı \(num)")
                    }
                }
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
