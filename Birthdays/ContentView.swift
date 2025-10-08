//
//  ContentView.swift
//  Birthdays
//
//  Created by Samaa Soltan on 08/10/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    @State private var newName: String = ""
    @State private var newDate: Date = .now
    
    @State private var nameValidationMessage: String = ""
    
    var body: some View {
        
        NavigationStack {
            List(friends, id: \.name) { friend in
                HStack {
                    
                    Text(friend.name)
                    
                    Spacer()
                    
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                    
                }

            }
            .navigationTitle(Text("Birthdays"))
            .safeAreaInset(edge: .bottom) {
                VStack {
                    Text("New Friend")
                        .bold()
                    DatePicker(selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: .date) {
                        
                        TextField("Name", text: $newName)
                            .onChange(of: newName) {
                                nameValidationMessage = ""
                            }
                    }
                    
                    if !nameValidationMessage.isEmpty {
                        HStack {
                            Text(nameValidationMessage)
                                .foregroundColor(.red)
                                .font(.caption)
                            Spacer()
                        }
                    }
                    
                    
                    Button("Save") {
                        if !newName.trimmingCharacters(in: .whitespaces).isEmpty {
                            let newFriend = Friend(name: newName, birthday: newDate)
                            context.insert(newFriend)
                            newName = ""
                            newDate = .now
                        } else {
                            nameValidationMessage = "Name is required"
                        }
                        
                    }
                    
                }
                .padding()
                .background(.bar)
            }.task {
                context.insert(Friend(name: "Yomn", birthday: .now))
                context.insert(Friend(name: "Saleh", birthday: Date(timeIntervalSince1970: 0)))
            }
            
            
            
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}
