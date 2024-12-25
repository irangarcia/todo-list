//
//  ListRowView.swift
//  TodoList
//
//  Created by Iran on 16/12/24.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.square.fill" : "square")
                .foregroundStyle(item.isCompleted ? .black.opacity(0.75) : .gray)
            
            Text(item.title)
            
            Spacer()
        }
        .font(.body)
        .padding(.vertical, 4)
    }
}

#Preview("This is the first title") {
    ListRowView(item: ItemModel(title: "This is the first item", isCompleted: false))
}

#Preview("This is the second title") {
    ListRowView(item: ItemModel(title: "This is the second item", isCompleted: true))
}
