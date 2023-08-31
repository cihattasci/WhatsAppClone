//
//  SituationRow.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 28.08.2023.
//

import SwiftUI

struct SituationRow: View {
    let name: String
    let date: Date
    var body: some View {
        HStack{
            AvatarView(image: Image(systemName: "figure.walk.circle.fill"), size: 45)
            VStack(alignment: .leading){
                Text(name).font(.topRow).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                Text(date, format: .dateTime.hour().minute()).font(.bottomRow).foregroundColor(.gray).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            Spacer()
        }
    }
}

struct SituationRow_Previews: PreviewProvider {
    static var previews: some View {
        SituationRow(name: "", date: Date.now)
    }
}
