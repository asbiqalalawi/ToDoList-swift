//
//  ListRowView.swift
//  TodoList
//
//  Created by SDS.Mac.012 on 16/09/23.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First", isCompleted: false)
    static var item2 = ItemModel(title: "Second", isCompleted: true)
    
    static var previews: some View {
        VStack {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
    }
}
