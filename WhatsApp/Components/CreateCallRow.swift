//
//  CreateCallRow.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 27.08.2023.
//

import SwiftUI

struct CreateCallRow: View {
    var body: some View {
        HStack{
            ZStack{
                Image(systemName: "personalhotspot").foregroundColor(.blue).zIndex(1)
            }.frame(width: 45, height: 45).background(Color(.darkGray)).cornerRadius(25)
            VStack(alignment: .leading){
                Text("Arama Bağlantısı Oluştur").font(.topRow).foregroundColor(.blue).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                Text("WhatsaApp aramanız için bağlantı paylaşın").font(.bottomRow).foregroundColor(.gray).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            Spacer()
        }
    }
}

struct CreateCallRow_Previews: PreviewProvider {
    static var previews: some View {
        CreateCallRow()
    }
}
