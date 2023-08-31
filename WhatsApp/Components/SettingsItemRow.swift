//
//  SettingsItemRow.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 28.08.2023.
//

import SwiftUI

struct SettingsItemRow: View {
    let icon: String
    let color: Color
    let name: String
    let toNavigate: String
    
    var body: some View {
        NavigationLink(destination: Text(name)){
            HStack{
                Image(systemName: icon).resizable().frame(width: 25, height: 25).foregroundColor(color)
                Text(name).padding([.leading], 6)
                Spacer()
            }
        }
    }
}

struct SettingsItemRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingsItemRow(icon: "camera.fill",color: Color.yellow, name: "sdfsd", toNavigate: "sdf")
    }
}
