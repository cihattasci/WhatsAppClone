//
//  Situation.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 17.04.2023.
//

import SwiftUI

struct Situation: View {
    var body: some View {
        NavigationView {
            VStack{
                List{
                    SituationAddRow()
                }.listStyle(.grouped)
                
                Form {
                    Section(header: Text("SON GÜNCELLEMELER")) {
                        ForEach(0..<5) { index in
                            SituationAddRow()
                        }
                    }
                }
            }
            
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
