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
                }.listStyle(.automatic).listRowSeparator(.automatic)
                Text("SON GÜNCELLEMELER").font(.footnote)
                Spacer()
            }
            .searchable(text: $search, prompt: "Arayın").onChange(of: search, perform: { newValue in
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
