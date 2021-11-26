//
//  ContentView.swift
//  ShowAlert
//
//  Created by Thongchai Subsaidee on 27/11/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAlert: Bool = false
    @State var isConfirmation: Bool = false
    
    var body: some View {
        
        Button {
//            isAlert = true
            isConfirmation = true
        } label: {
            Label("Delete", systemImage: "trash.fill")
        }
        .buttonStyle(.bordered)
        .tint(.pink)
        .controlSize(.large)
        
//        .alert("Are you sure?", isPresented: $isAlert) {
//            Button(role: .destructive) {
//                print("Item deleted")
//            } label: {
//                Text("Delete")
//            }
//        }
        
        .confirmationDialog("Are you sure?", isPresented: $isConfirmation, titleVisibility: .visible) {
            Button(role: .destructive) {
                print("Item delete")
            } label: {
                Text("Delete")
            }

        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
                .previewDevice("iPad mini (6th generation)")
                .preferredColorScheme(.dark)
                
        }

    }
}
