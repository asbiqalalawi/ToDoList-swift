//
//  ListView.swift
//  TodoList
//
//  Created by SDS.Mac.012 on 16/09/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first item!",
        "This is the second item!",
        "This is the third item!",
    ]
    
    var body: some View {
        List{
            ForEach(items, id: \.self) {
                item in ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
