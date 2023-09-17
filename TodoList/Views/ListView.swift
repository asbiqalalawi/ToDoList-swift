//
//  ListView.swift
//  TodoList
//
//  Created by SDS.Mac.012 on 16/09/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "First Item!", isCompleted: false),
        ItemModel(title: "Second Item!", isCompleted: true),
        ItemModel(title: "Third Item!", isCompleted: false),
    ]
    
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
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
