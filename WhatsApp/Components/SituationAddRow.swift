//
//  SituationAddRow.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 18.04.2023.
//

import SwiftUI

struct SituationAddRow: View {
    @State private var path = NavigationPath()
    var body: some View {
        HStack{
            AvatarView(image: Image(systemName: "figure.walk.circle.fill"), size: 45)
            VStack(alignment: .leading){
                Text("Durumum").font(.topRow).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                Text("Durumuma ekle").font(.bottomRow).foregroundColor(.gray).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            Spacer()
            HStack{
                NavigationStack(path: $path) {
                            Button {
                                path.append("NewView")
                            } label: {
                                Text("Show NewView")
                            }
                            .navigationDestination(for: String.self) { view in
                                if view == "NewView" {
                                    Text("This is NewView")
                                }
                            }
                        }
                ZStack{
                    Image(systemName: "camera.fill").resizable().frame(width: 17, height: 13).foregroundColor(.blue).zIndex(1)
                }.frame(width: 30, height: 30).cornerRadius(15)
                ZStack{
                    Image(systemName: "pencil").resizable().frame(width: 13, height: 12).foregroundColor(.blue).zIndex(1)
                }.frame(width: 30, height: 30).cornerRadius(15)
            }
        }
    }
}

struct AvatarView: View {
    let image: Image
    let size: CGFloat
    var body: some View {
        image
            .resizable()
            .foregroundColor(.black)
            .aspectRatio(contentMode: .fit)
            .frame(width: size, height: size)
            .cornerRadius(size / 2)
    }
}

struct SituationAddRow_Previews: PreviewProvider {
    static var previews: some View {
        SituationAddRow()
    }
}
