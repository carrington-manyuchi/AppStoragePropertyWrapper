//
//  ContentView.swift
//  AppStoragePropertyWrapper
//
//  Created by Manyuchi, Carrington C on 2024/09/04.
//

import SwiftUI

struct AppStorageWrapper: View {
    
    //@State var currentUsername: String?
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text(currentUsername ?? "Add name here")
            
            if let name = currentUsername {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                
                let name = "Josy"
                currentUsername = name
                
                //UserDefaults.standard.set(name, forKey: "name")

            }
        })
        .padding()
//        .onAppear(perform: {
//            currentUsername = UserDefaults.standard.string(forKey: "name")
//        })
    }
}

#Preview {
    AppStorageWrapper()
}
