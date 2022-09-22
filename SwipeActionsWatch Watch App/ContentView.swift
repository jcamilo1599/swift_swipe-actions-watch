//
//  ContentView.swift
//  SwipeActionsWatch Watch App
//
//  Created by Juan Camilo Marín Ochoa on 22/09/22.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0;
    
    var body: some View {
        VStack {
            Text("Contador: \(counter)")
            List {
                Text("Text 1")
                    .swipeActions(edge: .leading) {
                        Button {
                            counter += 1
                        } label: {
                            Label("action 1", systemImage: "plus")
                        }
                        .tint(.blue)
                    }
                    .swipeActions(edge: .trailing) {
                        Button {
                            counter -= 1
                        } label: {
                            Label("action 2", systemImage: "minus")
                        }
                        .tint(.red)
                    }
                
                Text("Text 2")
                    .swipeActions(edge: .trailing) {
                        Button {
                            counter += 1
                        } label: {
                            Label("action 1", systemImage: "plus")
                        }
                        .tint(.blue)
                        
                        Button {
                            counter -= 1
                        } label: {
                            Label("action 2", systemImage: "minus")
                        }
                        .tint(.red)
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
