//
//  CallsItemRow.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 27.08.2023.
//

import SwiftUI

enum CallWay {
    case outGoing, outComing
}

struct CallsItemRow: View {
    let name: String
    let way: CallWay
    let date: Date
    
    var body: some View {
        HStack{
            AvatarView(image: Image(systemName: "figure.walk.circle.fill"), size: 45)
            VStack(alignment: .leading){
                Text(name).font(.topRow)
                HStack{
                    Image(systemName: "phone.fill").foregroundColor(.gray)
                    Text(way == CallWay.outComing ? "Gelen" : "Giden").font(.bottomRow).foregroundColor(.gray)
                }
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            Spacer()
            HStack{
                Text(date, format: .dateTime.hour().minute()).font(.bottomRow).foregroundColor(.gray)
                Image(systemName: "info.circle").resizable().foregroundColor(.blue).frame(width: 20, height: 20)
            }
        }
    }
}

struct CallsItemRow_Previews: PreviewProvider {
    static var previews: some View {
        CallsItemRow(name: "Annem", way: .outComing, date: Date.now)
    }
}
