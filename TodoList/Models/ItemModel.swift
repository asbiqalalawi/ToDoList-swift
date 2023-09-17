//
//  ItemModel.swift
//  TodoList
//
//  Created by SDS.Mac.012 on 17/09/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
