//
//  ContentView.swift
//  MyMemo
//
//  Created by 冨永　涼 on 2021/03/15.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText: String = ""
    @State var inputText: [String] = []
    @State var new: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("検索", text: $searchText, onCommit: {
                   //表示に関する処理
                })
                Divider()
                TextEditor(text: $new)
                Button(action: {
                    self.inputText.append(self.new)
                    self.new = ""
                }) {
                    Text("追加")
                }
                Divider()
                List {//登録したメモに置き換える
                    ForEach(inputText, id: \.self) { user in
                        Text(user)
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("MyMemo")
            .navigationBarItems(trailing:
                NavigationLink(destination: RegistrationView()) {
                    Image(systemName: "square.and.pencil")
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
