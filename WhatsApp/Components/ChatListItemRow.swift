//
//  ChatListItemRow.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 28.08.2023.
//

import SwiftUI

struct ChatListItemRow: View {
    let constant: Bool?
    let name: String
    let message: String
    let date: Date
    var body: some View {
        HStack{
            AvatarView(image: Image(systemName: "figure.walk.circle.fill"), size: 45)
            VStack(alignment: .leading){
                Text(name).font(.topRow).lineLimit(1)
                HStack{
                    Image(systemName: "checkmark").foregroundColor(.gray)
                    Text(message).foregroundColor(.gray).lineLimit(2)
                }
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            Spacer()
            VStack{
                Text(date, format: .dateTime.hour().minute()).font(.topRow).foregroundColor(.gray)
                if constant != false {
                    Image(systemName: "syringe.fill").resizable().foregroundColor(.gray).frame(width: 20, height: 20)
                }
            }
        }
    }
}

struct ChatListItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatListItemRow(constant: false, name: "Annem", message: "Annem", date: Date.now)
    }
}
