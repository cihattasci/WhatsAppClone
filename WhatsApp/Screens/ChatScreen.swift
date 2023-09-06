//
//  ChatScreen.swift
//  WhatsApp
//
//  Created by Cihat Tascı on 31.08.2023.
//

import SwiftUI

struct ActionLabel: Hashable{
    let icon: String
    let title: String
}

struct ChatScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var message: String = ""
    @State private var messages: [String] = [""]
    @State private var isMessageEmpty: Bool = true
    @State private var actionSheet: Bool = false
    @State public var actionLabels: [ActionLabel] =
    [
        ActionLabel(icon: "camera", title: "Kamera"),
        ActionLabel(icon: "photo", title: "Fotoğraf ve Video Arşivi"),
        ActionLabel(icon: "doc", title: "Belge"),
        ActionLabel(icon: "drop", title: "Konum"),
        ActionLabel(icon: "person.crop.circle", title: "Kişi"),
        ActionLabel(icon: "align.horizontal.left", title: "Anket"),
    ]
    @FocusState var isInputActive: Bool
    
    let width = UIScreen.main.bounds.width
    let name: String
    
    var body: some View {
        VStack{
            ScrollView {
                ForEach(messages, id: \.self) { message in
                    if message.count > 0{
                        HStack{
                            if message.count % 2 == 0{
                                Spacer()
                            }
                            VStack{
                                Text("\(message)")
                            }
                            .frame(width: width * 0.3, alignment: .leading)
                            .padding(10)
                            .background(message.count % 2 == 0 ? .gray : .green)
                            .cornerRadius(10)
                            if message.count % 2 != 0 {
                                Spacer()
                            }
                        }
                        .padding(.horizontal, 6)
                    }
                }
            }
            Spacer()
            HStack{
                Button {
                    actionSheet = true
                } label: {
                    Image(systemName: "plus").font(.title).foregroundColor(.blue)
                }
                TextField("Enter your name", text: $message)
                    .textFieldStyle(.roundedBorder)
                    .focused($isInputActive)
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard) {
                            Spacer()
                            Button("Done") {
                                isInputActive = false
                            }
                        }
                    }
                Spacer()
                if !isMessageEmpty {
                    Button {
                        withAnimation {
                            self.messages.append(message)
                            self.message = ""
                        }
                    } label: {
                        Image(systemName: "paperplane.circle.fill").font(.title).foregroundColor(.blue)
                    }
                } else{
                    Button {
                        print("")
                    } label: {
                        Image(systemName: "camera").font(.title2).foregroundColor(.blue)
                    }
                    Button {
                        print("")
                    } label: {
                        Image(systemName: "mic").font(.title2).foregroundColor(.blue)
                    }
                }
                
            }.padding([.all], 10)
        }
        .onChange(of: message, perform: { newValue in
            withAnimation(.easeOut) {
                if newValue.isEmpty{
                    self.isMessageEmpty = true
                } else{
                    self.isMessageEmpty = false
                }
            }
        })
        .frame(width: width)
        .navigationBarBackButtonHidden()
        .confirmationDialog("Title", isPresented: $actionSheet, titleVisibility: .hidden){
            ForEach(actionLabels, id: \.self) { action in
                Button {
                    print("")
                } label: {
                    HStack{
                        Image(systemName: action.icon).font(.title).foregroundColor(.blue)
                        Text(action.title).font(.title)
                        Spacer()
                    }.padding(10)
                }
            }
            //cancel button added
            Button("İptal", role: .cancel){}
        }
        .toolbar {
            // trailing
            Group{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("phone")
                    } label: {
                        Image(systemName: "video").foregroundColor(.blue)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("phone")
                    } label: {
                        Image(systemName: "phone").foregroundColor(.blue)
                    }
                }
            }
            
            // leading
            Group{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.blue)
                    }
                }
                ToolbarItem(placement: .navigation) {
                    Text(name).bold().font(.headline).lineLimit(1)
                }
                ToolbarItem(placement: .cancellationAction) {
                    Image(systemName: "person.crop.circle.fill").foregroundColor(.accentColor).padding(.leading, 10).font(.title)
                }
            }
        }
    }
}

struct ChatScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreen(name: "")
    }
}
