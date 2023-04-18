//
//  SituationAddRow.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 18.04.2023.
//

import SwiftUI

struct SituationAddRow: View {
    var body: some View {
        HStack{
            AvatarView(image: Image(systemName: "figure.walk.circle.fill"), size: 45)
            VStack(alignment: .leading){
                Text("Durumum").font(.topRow).foregroundColor(.white).padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                Text("Durumuma ekle").font(.bottomRow).foregroundColor(.gray).padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            Spacer()
            HStack{
                ZStack{
                    Image(systemName: "camera.fill").resizable().frame(width: 17, height: 13).foregroundColor(.blue).zIndex(1)
                }.frame(width: 30, height: 30).background(Color(.darkGray)).cornerRadius(15)
                ZStack{
                    Image(systemName: "pencil").resizable().frame(width: 13, height: 12).foregroundColor(.blue).zIndex(1)
                }.frame(width: 30, height: 30).background(Color(.darkGray)).cornerRadius(15)
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
        }
        .background(Color(hex: 0x606060))
    }
}

struct AvatarView: View {
    let image: Image
    let size: CGFloat
    var body: some View {
        image
            .resizable()
            .foregroundColor(.white)
            .aspectRatio(contentMode: .fit)
            .frame(width: size, height: size)
            .cornerRadius(size / 2)
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
    }
}

struct SituationAddRow_Previews: PreviewProvider {
    static var previews: some View {
        SituationAddRow()
    }
}
