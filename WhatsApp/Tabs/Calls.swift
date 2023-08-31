//
//  Calls.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 17.04.2023.
//

import SwiftUI

struct Call: Hashable {
    let name: String
    let way: CallWay
    let date: Date
}

enum PickerType{
    case all, unresponse
}

struct Calls: View {
    @State private var search: String = ""
    @State private var picker: PickerType = .all
    @State private var Calls: [Call] = [
        Call(name: "Annem", way: .outComing, date: Date.now),
        Call(name: "Babam", way: .outGoing, date: Date.now),
        Call(name: "Abim", way: .outComing, date: Date.now),
        Call(name: "Ablam", way: .outGoing, date: Date.now)
    ]
    
    var body: some View {
        NavigationView {
            VStack{
                List{
                    CreateCallRow()
                    Section(header: Text("En Son").foregroundColor(.black).bold().font(.system(size: 15))){
                        ForEach(Calls, id: \.self) { call in
                            CallsItemRow(name: call.name, way: call.way, date: call.date)
                        }
                    }
                }.listStyle(.insetGrouped)
            }
            .searchable(text: $search, prompt: "Ara").onChange(of: search, perform: { newValue in
                if newValue.isEmpty{}
            })
            .navigationTitle("Aramalar")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Düzenle") {
                        print("Düzenle")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("Ara")
                    } label: {
                        Image(systemName: "phone.badge.plus").foregroundColor(.blue)
                    }
                }
                ToolbarItem(placement: .principal) {
                    Picker("", selection: $picker){
                        Text("Tümü").tag(PickerType.all)
                        Text("Cevapsız").tag(PickerType.unresponse)
                    }.pickerStyle(.segmented)
                }
            }
        }
    }
}

struct Calls_Previews: PreviewProvider {
    static var previews: some View {
        Calls()
    }
}
