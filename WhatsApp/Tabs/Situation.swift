//
//  Situation.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 17.04.2023.
//

import SwiftUI

struct Situation: View {
    
    @State private var search: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                List{
                    SituationAddRow()
                    Section(header:Text("SON GÜNCELLEMELER")){
                        SituationRow(name: "Annem", date: Date.now)
                        SituationRow(name: "Ablam", date: Date.now)
                        SituationRow(name: "Abim", date: Date.now)
                        SituationRow(name: "Yengem", date: Date.now)
                    }
                    
                    Section(header:Text("GÖRÜLEN GÜNCELLEMELER"), footer: Text("Durum güncellemeleriniz uçtan uca şifrelidir").padding(15)){
                        SituationRow(name: "Babam", date: Date.now)
                    }
                }.listStyle(.insetGrouped)
            }
            .searchable(text: $search, prompt: "Ara")
            .onChange(of: search, perform: { newValue in
                if newValue.isEmpty{}
            })
            .navigationTitle("Durum")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Gizlilik") {
                        print("Gizlilik")
                    }
                }
            }
        }
    }
}

struct Situation_Previews: PreviewProvider {
    static var previews: some View {
        Situation()
    }
}
