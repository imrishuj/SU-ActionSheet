//
//  ContentView.swift
//  DemoActionSheet
//
//  Created by Rishabh on 02/06/20.
//  Copyright © 2020 Rishabh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActionSheetShow:Bool = false
    
    var body: some View {
        
        Button("Show Action Sheet") {
        self.isActionSheetShow = true
        }.actionSheet(isPresented: $isActionSheetShow) { () -> ActionSheet in
            showActionSheet(withTitle: "First ActionSheet", message: "With First Message")
        }
    }
    
    private func showActionSheet(withTitle: String, message: String) -> ActionSheet {
    
        return ActionSheet(title: Text(withTitle), message: Text(message), buttons: [
            
            .default(Text("Default"), action: {
                print("Default tapped")
            }),
            
            .destructive(Text("Destructive"), action: {
                print("Destructive tapped")
            }),
            
            .cancel(Text("Cancel"), action: {
                print("Cancel tapped")
            })
        ])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
