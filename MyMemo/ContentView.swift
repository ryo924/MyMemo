//
//  ContentView.swift
//  MyMemo
//
//  Created by 冨永　涼 on 2021/03/15.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("検索", text: $searchText, onCommit: {
                   //表示に関する処理
                })
                List {//登録したメモに置き換える
                    Text("a")
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
