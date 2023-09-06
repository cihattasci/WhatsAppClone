//
//  Chats.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 17.04.2023.
//

import SwiftUI

struct Chat: Hashable{
    var constant: Bool?
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
    ]
    var body: some View {
        NavigationView {
            VStack{
                List{
                    ForEach(chats.indices, id: \.self) { i in
                        NavigationLink {
                            ChatScreen(name: chats[i].name)
                        } label: {
                            ChatListItemRow(pinned: chats[i].constant, name: chats[i].name, message: chats[i].message, date: chats[i].date)
                        }
                        .swipeActions(edge: .trailing) {
                            //right side
                            Button {
                                print("Arşivle")
                            } label: {
                                Image(systemName: "archivebox.fill")
                            }.tint(.blue)
                            Button {
                                print("Diğer")
                            } label: {
                                Image(systemName: "ellipsis")
                            }.tint(.gray)
                        }
                        .swipeActions(edge: .leading) {
                            //left side
                            Button {
                                print("okunmadı")
                            } label: {
                                Image(systemName: "quote.bubble.fill")
                            }.tint(.blue)
                            Button {
                                withAnimation {
                                    chats[i].constant?.toggle()
                                    chats.swapAt(0, i)
                                }
                            } label: {
                                Image(systemName: chats[i].constant == true ? "pin.slash.fill" : "pin.fill")
                            }.tint(.gray)
                        }
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
