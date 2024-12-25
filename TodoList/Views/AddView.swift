//
//  AddView.swift
//  TodoList
//
//  Created by Iran on 16/12/24.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var textField: String = ""
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ScrollView {
            HStack {
                TextField("Add an errand", text: $textField)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(10)
                
                Button(
                    action: {
                        saveButtonPressed()
                    },
                    label: {
                        Image(systemName: "plus")
                            .frame(height: 40)
                            .padding(.horizontal, 4)
                    }
                )
                .disabled(textField.count < 3)
                .buttonStyle(.borderedProminent)
                .tint(.black)
            }
            .padding(16)
        }
        .navigationTitle("Add")
    }
    
    func saveButtonPressed() {
        listViewModel.addItem(title: textField)
    
        dismiss()
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel())
}
