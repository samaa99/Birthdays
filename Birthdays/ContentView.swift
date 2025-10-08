//
//  ContentView.swift
//  Birthdays
//
//  Created by Samaa Soltan on 08/10/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var friends: [Friend] = [
        Friend(name: "Yomn", birthday: .now),
        Friend(name: "Saleh", birthday: Date(timeIntervalSince1970: 0)),
    ]
    
    @State private var newName: String = ""
    @State private var newDate: Date = .now
    
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
                    }
                    
                    Button("Save") {
                        let newFriend = Friend(name: newName, birthday: newDate)
                        friends.append(newFriend)
                        
                        newName = ""
                        newDate = .now
                    }
                    
                }
                .padding()
                .background(.bar)
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
