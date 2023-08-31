//
//  Communities.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 17.04.2023.
//

import SwiftUI

struct Communities: View {
    let howMuchLeft = (UIScreen.main.bounds.width - 50 - 100) / 2
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                Image(systemName: "brain.head.profile").resizable().frame(width: 100, height: 100).padding([.leading], howMuchLeft)
                Text("Topluluklar sayesinde bağlantıda kalın").bold().font(.title3).padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                Text("Topluluklar, üyelerin konulara göre ayrılmış gruplarda bir araya gelmelerini sağlar. Eklediğiniz tüm topluluklar burada gösterilir.").font(.subheadline).padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                Button("Örnek topluluklara bak >") {
                    print("")
                }.bold().padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                Divider().padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                Button("Yeni Topluluk") {
                    print("")
                }.bold().padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                Divider().padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                Spacer()
            }.padding()
            .navigationTitle("Topluluklar")
        }
    }
}

struct Communities_Previews: PreviewProvider {
    static var previews: some View {
        Communities()
    }
}
