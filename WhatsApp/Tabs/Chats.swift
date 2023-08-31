//
//  Chats.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 17.04.2023.
//

import SwiftUI

struct Chat: Hashable{
    let constant: Bool?
    let name: String
    let message: String
    let date: Date
}

struct Chats: View {
    @State private var search: String = ""
    @State private var chats: [Chat] = [
        Chat(constant: true, name: "Annem", message: "Geldim", date: Date.now),
        Chat(constant: false, name: "Babam", message: "Gittim", date: Date.now),
        Chat(constant: false, name: "Abim", message: "Durdum", date: Date.now),
        Chat(constant: false, name: "Ablam", message: "Yoruldum", date: Date.now),
        Chat(constant: false, name: "Annem", message: "Geldim", date: Date.now),
        Chat(constant: false, name: "Babam", message: "Gittim", date: Date.now),
        Chat(constant: false, name: "Abim", message: "Durdum", date: Date.now),
        Chat(constant: false, name: "Ablam", message: "Yoruldum", date: Date.now),
        Chat(constant: false, name: "Annem", message: "Geldim", date: Date.now),
        Chat(constant: false, name: "Babam", message: "Gittim", date: Date.now),
        Chat(constant: false, name: "Abim", message: "Durdum", date: Date.now),
        Chat(constant: false, name: "Ablam", message: "Yoruldum", date: Date.now),
    ]
    var body: some View {
        NavigationView {
            VStack{
                List{
                    ForEach(chats, id: \.self) { chat in
                        ChatListItemRow(constant: chat.constant, name: chat.name, message: chat.message, date: chat.date)
                    }
                }.listStyle(.plain)
            }
            .searchable(text: $search, prompt: "Ara")
            .onChange(of: search, perform: { newValue in
                print(newValue)
            })
            .navigationTitle("Sohbetler")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        print("")
                    } label: {
                        Text("Düzenle")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("")
                    } label: {
                        Image(systemName: "camera")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("")
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
            }
        }
    }
}

struct Chats_Previews: PreviewProvider {
    static var previews: some View {
        Chats()
    }
}
